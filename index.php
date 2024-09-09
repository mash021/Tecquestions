<?php
include('db.php');

// تعداد کل سوالات را بگیر
$total_questions = $conn->query("SELECT COUNT(id) AS total FROM questions")->fetch_assoc()['total'];

// شماره صفحه فعلی را بگیر
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$limit = 1;
$offset = ($page - 1) * $limit;

// سوال فعلی را از دیتابیس بگیر
$sql = "SELECT * FROM questions LIMIT $limit OFFSET $offset";
$result = $conn->query($sql);
$question = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.25.0/themes/prism.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.25.0/prism.js"></script>
    <title>سوالات 
    <?php echo $question['platform']; ?> 
    </title>
   


    <style>
        /* حالت پیش‌فرض */
        body {
            background-color: white;
            transition: background-color 0.5s ease; /* تغییر رنگ با انیمیشن */
        }
        /* کلاس سبز برای پاسخ درست */
        .correct {
            background-color: #d4edda;
        }
        /* کلاس قرمز برای پاسخ نادرست */
        .incorrect {
            background-color: #f8d7da;
        }

        /* استایل مودال برای پیام سفارشی */
        .modal {
            display: none; 
            position: fixed; 
            z-index: 1; 
            left: 0;
            top: 0;
            width: 100%; 
            height: 100%; 
            background-color: rgba(0, 0, 0, 0.4); 
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        
        <h1 style="direction : rtl;"><?php echo $question['title_fa']; ?> <br> 
        <div style="direction : ltr;">
        <?php echo $question['title_en']; ?>
        </div></h1>
        
        <pre><code class="language-php"><?php echo htmlentities($question['code']); ?></code></pre>

        <form method="POST" action="#">
            <input type="hidden" name="correct_option" value="<?php echo $question['correct_option']; ?>"><br>
            <input type="hidden" name="page" value="<?php echo $page; ?>">
            
            <label>
                <input type="radio" name="answer" value="1"> 
                <div style="direction : rtl;"><?php echo $question['option1_fa']; ?></div> <br> 
                <div style="direction : rtl;"><?php echo $question['option1_en']; ?></div>
            </label><br>
            
            <label>
                <input type="radio" name="answer" value="2"> 
                <div style="direction : rtl;"> <?php echo $question['option2_fa']; ?></div> <br>
                  <div style="direction : rtl;"><?php echo $question['option2_en']; ?></div>
            </label><br>
            
            <label>
                <input type="radio" name="answer" value="3"> 
                <div style="direction : rtl;"> <?php echo $question['option3_fa']; ?></div> <br>
                  <div style="direction : rtl;"><?php echo $question['option3_en']; ?></div>
            </label><br>
            
            <label>
                <input type="radio" name="answer" value="4"> 
                <div style="direction : rtl;"> <?php echo $question['option4_fa']; ?></div><br> 
                  <div style="direction : rtl;"><?php echo $question['option4_en']; ?></div>
            </label><br>
            
            <button type="submit">ثبت</button>
        </form>
        <div class="pagination">
            <?php if ($page > 1): ?>
                <a href="?page=<?php echo $page - 1; ?>">قبلی</a>
            <?php endif; ?>
            <?php if ($page < $total_questions): ?>
                <a href="?page=<?php echo $page + 1; ?>">بعدی</a>
            <?php endif; ?>
        </div>

        <?php
        // بررسی اینکه فرم ارسال شده است یا نه
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $answer = isset($_POST['answer']) ? $_POST['answer'] : null;
            $correct_option = isset($_POST['correct_option']) ? $_POST['correct_option'] : null;
            $page = isset($_POST['page']) ? $_POST['page'] : null;

            if ($answer !== null && $correct_option !== null) {
                if ($answer == $correct_option) {
                    echo '<script>';
                    echo 'document.body.classList.add("correct");'; // کلاس correct را اضافه می‌کنیم
                    echo 'showModal("تبریک! جواب صحیح است.");'; // نمایش پیام صحیح
                    echo '</script>';
                } else {
                    echo '<script>';
                    echo 'document.body.classList.add("incorrect");'; // کلاس incorrect را اضافه می‌کنیم
                    echo 'showModal("متاسفانه جواب اشتباه است. جواب صحیح گزینه ' . $correct_option . ' است.");'; // نمایش پیام اشتباه
                    echo '</script>';
                }
            }
        }
        ?>

        <!-- مودال سفارشی -->
        <div id="resultModal" class="modal">
            <div class="modal-content" id="modalMessage">
            </div>
        </div>

        <script>
            function showModal(message) {
                var modal = document.getElementById('resultModal');
                var modalMessage = document.getElementById('modalMessage');
                modalMessage.innerHTML = "<h3>" + message + "</h3>";
                modal.style.display = "flex";
                setTimeout(function() {
                    modal.style.display = "none";
                }, 3000); // بعد از ۳ ثانیه بسته می‌شود
            }
        </script>
    </div>
</body>
</html>
