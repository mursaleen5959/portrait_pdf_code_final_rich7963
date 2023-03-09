<?php
////////////////
// Switching on the Error display
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

/* Necessary File includes */
require_once('fpdf/fpdf.php');
require_once('fpdf/extension.php');
require_once('db.php');

// Custom function to insert the PDF cells

function insert_cell($pdf, $X = 0, $Y = 0, $CellWidth = 0, $CellHeight = 0, $text, $border = 0, $alignment = 'L')
{
    $pdf->SetY($Y);
    $pdf->SetX($X);
    $pdf->Cell($CellWidth, $CellHeight, $text, $border, 0, $alignment);
}

/* ********************** */
ob_start();
// PDF Object
$pdf = new PDF('P', 'mm', 'A4');
$pdf->AliasNbPages();
$pdf->SetMargins(4,50,4);
$pdf->AddPage();
$pdf->SetAutoPageBreak(true,30);
// $pdf->SetMargins($left,$top,$right);
// $pdf->Image('templates/temp_portrait.jpg',0,0,210,0);


$pdf->SetFont('Arial', 'B', 10);
/* ********************** */
// $pdf->SetY(0);
$pdf->SetX(4);
$pdf->SetWidths(array(19, 30, 40,21,40,18,15,20));
$pdf->SetAligns(array('C','C','C','C','C','C','C','C'));
$pdf->Row(array('Accounts','Name','Statement','Due Date','Consumption','Rate','Fee','Amount'));

// $pdf->SetWidths(array(8, 19, 15, 20,18,31,27,31,11,11,16));
// $pdf->SetAligns(array('C','C','C','C','C','C','C','C','C','C','C'));
// $pdf->Row(array('ID#','Accounts','Name','Statement','Due Date','Current Read','Previous Read','Consumption','Rate','Fee','Amount'));

$pdf->SetFont('Arial', '', 10);
$sql = "SELECT * FROM watersystem_bill ORDER BY id DESC";
if ($result = mysqli_query($conn, $sql)) {
    if (mysqli_num_rows($result) > 0)
    {
        while ($row = mysqli_fetch_array($result)) {
            $prev = $row['prev'] * 0.00057803472222;
            $pres = $row['pres'] * 0.00057803472222;
            $price = $row['price'];
            $totalcons = $pres - $prev;
            $bill = $totalcons * ($price / 100);
            $processfee = $row['processfee'];
            $bill2 = $bill + $processfee;
            $dateconvert = date('m/d/y', strtotime($row['readprev_date']));
            $dateconvert2 = date('m/d/y', strtotime($row['readpres_date']));
            $dateconvert3 = date('m/d/y', strtotime($row['date_due']));
 
            $name_sql = "SELECT * FROM member_resident WHERE account='".$row['account']."'";
            if ($name_result = mysqli_query($conn, $name_sql))
            {
                if (mysqli_num_rows($name_result) > 0)
                {
                    while ($name_row = mysqli_fetch_array($name_result))
                    {
                        $name = $name_row['first_name']." ".$name_row['last_name'];
                    }
                }
                else
                {
                    $name = '';
                }
            }
            else{
                $name = '';
            }


            $pdf->Row(array($row['account'],$name,$dateconvert . " to " . $dateconvert2,$dateconvert3,$totalcons,"$".$row['price'],"$".$row['processfee'],'$'.number_format($bill2, 2)));

        }
        // Free result setz
        mysqli_free_result($result);
    }
}


$filename = "file.pdf";
header('Content-type: application/pdf');
ob_clean();
$pdf->Output('I', $filename);
