<?php
$answer = $_POST['answer'];
$correct_option = $_POST['correct_option'];
$page = $_POST['page'];
?>

<?php if ($answer == $correct_option) { ?>
    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <script>
            alert('تبریک! جواب صحیح است.');
        </script>
    </div>
<?php } else { ?>
    <div class="alert alert-danger">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <script>
            alert('متاسفانه جواب اشتباه است. جواب صحیح گزینه <?php echo $correct_option; ?> است.');
        </script>
    </div>
<?php } ?>

<?php
// نمایش دکمه بازگشت به سوال
echo "<br><a href='index.php?page=$page'>بازگشت به سوال</a>";
?>
