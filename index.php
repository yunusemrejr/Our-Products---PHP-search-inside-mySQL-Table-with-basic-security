
<html><head>

</head><body id='body1'>
    <noscript>
        you need JavaScript to view this page. Please enable it in your browser settings.
        <style>
            #myform{
                display:none;
            }
            </style>
</noscript>
<form id='myform' action='index.php' method='post'><input name='' type='' value='Click to verify you have JavaScript enabled.'></form>
<?php
echo "
<script>
document.getElementById('body1').innerHTML = \"<form id='myform' action='index.php' method='post'><input name='submitJSControl' type='submit' value='Click to verify you have JavaScript enabled.'></form>\";

    </script>    
";
?></body>
    </html>

    <?php
    if(isset($_POST['submitJSControl'])){
session_start();
$_SESSION['js'] = 'js';

header('Location:home.php');
}

?>