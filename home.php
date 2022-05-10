<?php
session_start();
if(isset($_SESSION['js'])){
 

?>
<?php
echo " <script>    

function submitFunction(){
    const getInpt = document.getElementById('search').value;
    if(getInpt.includes('*')||getInpt.includes('.')||getInpt.includes('SELECT')||getInpt.includes('FROM')||getInpt.includes('\"')||getInpt.includes(';')||getInpt.includes(':')||getInpt.includes('DROP')){
       document.write('denial');
    }
}
</script>
";
?>
<!DOCTYPE HTML>
<html>
<head>
  
    <script>
function displayTitle(){
document.getElementById('h1').innerHTML='Search Our Products Name:';


}
function displayForm(){
    document.getElementById('form').innerHTML='<label></label><input type="text" name="searchs" id="search"><input type="submit" id="btnS" name="submitbtn" value="Search" onclick="submitFunction()"/>';

}
</script>
     <title>Search Our Products</title>

    <style>
        table,th,td{
            border: 1px solid black;
            text-align:center;
             margin:auto;
        } 
        *{
            text-align:center;
        }
        </style>

</head>  <noscript>
        seems like you disabled JS again.
</noscript>
<body id='body1' onload='displayTitle();displayForm();'>
 
    <h1 id='h1'></h1>
    <form  id="form" action="home.php" method="post" name="form">


</form>
</body>
</html>

<?php 

$con = new PDO("mysql:host=localhost;dbname=products",'root','');

if(isset($_POST["submitbtn"]) && $_POST["searchs"] != "" && $_POST["searchs"] != " "){
    $str = $_POST["searchs"];
        $sth = $con -> prepare("SELECT * FROM `products` WHERE Product_Name LIKE '%$str%' ");
    $sth-> setFetchMode(PDO:: FETCH_OBJ);
    $sth -> execute();
   
    

    if($row = $sth->fetch()){
     ?>


        <br><br><br>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Desc</th>
                <th>Stars</th>
            </tr>
            <td>
                <?php echo $row->Product_ID; ?>
            </td>
            <td>
                <?php echo $row->Product_Name; ?>
            </td>
            <td>
            <?php echo $row->Product_Description; ?>
           </td>
           <td>
            <?php echo $row->Product_Stars; ?>
           </td>
           
    </tr>
    </table> 

    <?php
    
    }
   
    else{
        echo "Name Does not exist";
    }


}
 

?>


<?php

}
else{
    echo "denial";
     exit;
}
?>