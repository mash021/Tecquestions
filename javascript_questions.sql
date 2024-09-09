-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2024 at 05:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javascript_questions`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `title_fa` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `code` text DEFAULT NULL,
  `platform` varchar(255) NOT NULL,
  `option1_fa` varchar(255) DEFAULT NULL,
  `option1_en` varchar(255) DEFAULT NULL,
  `option2_fa` varchar(255) DEFAULT NULL,
  `option2_en` varchar(255) DEFAULT NULL,
  `option3_fa` varchar(255) DEFAULT NULL,
  `option3_en` varchar(255) DEFAULT NULL,
  `option4_fa` varchar(255) DEFAULT NULL,
  `option4_en` varchar(255) DEFAULT NULL,
  `correct_option` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title_fa`, `title_en`, `code`, `platform`, `option1_fa`, `option1_en`, `option2_fa`, `option2_en`, `option3_fa`, `option3_en`, `option4_fa`, `option4_en`, `correct_option`) VALUES
(1, 'تفاوت بین var، let و const چیست؟', 'What is the difference between var, let, and const?', 'let x = 1;\nvar y = 2;\nconst z = 3;', 'JavaScript', 'var برای متغیرهای سراسری است', 'var is for global variables', 'let برای متغیرهای بلوک اسکوپ است', 'let is for block-scoped variables', 'const برای ثابت‌ها استفاده می‌شود', 'const is for constants', 'var و let یکی هستند', 'var and let are the same', 3),
(2, 'تفاوت بین == و === چیست؟', 'What is the difference between == and ===?', 'let a = 5;\nlet b = \"5\";\nconsole.log(a == b);\nconsole.log(a === b);', 'JavaScript', '== مقایسه با تبدیل نوع انجام می‌دهد', '== performs type conversion during comparison', '=== مقایسه بدون تبدیل نوع انجام می‌دهد', '=== performs comparison without type conversion', '== و === یکی هستند', '== and === are the same', 'فقط === نوع داده را مقایسه می‌کند', 'Only === compares data types', 2),
(3, 'تفاوت بین null و undefined چیست؟', 'What is the difference between null and undefined?', 'let a;\nlet b = null;\nconsole.log(a);\nconsole.log(b);', 'JavaScript', 'null نشان‌دهنده عدم وجود مقدار است', 'null represents the absence of a value', 'undefined نشان‌دهنده عدم تعریف متغیر است', 'undefined represents an uninitialized variable', 'null و undefined یکی هستند', 'null and undefined are the same', 'فقط null برای تعریف متغیر است', 'Only null is used for variable definition', 2),
(4, 'چگونه می‌توانیم یک تابع در جاوا اسکریپت تعریف کنیم؟', 'How can we define a function in JavaScript?', 'function greet(name) {\n    return \"Hello, \" + name;\n}\nconsole.log(greet(\"World\"));', 'JavaScript', 'با استفاده از کلمه کلیدی function', 'Using the keyword function', 'با استفاده از arrow function', 'Using arrow function', 'با استفاده از کلاس‌ها', 'Using classes', 'با استفاده از متدها', 'Using methods', 1),
(5, 'تفاوت بین var و let و const چیست؟', 'What is the difference between var, let, and const?', 'let x = 1;\nvar y = 2;\nconst z = 3;', 'JavaScript', 'var برای متغیرهای سراسری است', 'var is for global variables', 'let برای متغیرهای بلوک اسکوپ است', 'let is for block-scoped variables', 'const برای ثابت‌ها استفاده می‌شود', 'const is for constants', 'var و let یکی هستند', 'var and let are the same', 3),
(6, 'تفاوت بین == و === چیست؟', 'What is the difference between == and ===?', 'let a = 5;\nlet b = \"5\";\nconsole.log(a == b);\nconsole.log(a === b);', 'JavaScript', '== مقایسه با تبدیل نوع انجام می‌دهد', '== performs type conversion during comparison', '=== مقایسه بدون تبدیل نوع انجام می‌دهد', '=== performs comparison without type conversion', '== و === یکی هستند', '== and === are the same', 'فقط === نوع داده را مقایسه می‌کند', 'Only === compares data types', 2),
(7, 'تفاوت بین null و undefined چیست؟', 'What is the difference between null and undefined?', 'let a;\nlet b = null;\nconsole.log(a);\nconsole.log(b);', 'JavaScript', 'null نشان‌دهنده عدم وجود مقدار است', 'null represents the absence of a value', 'undefined نشان‌دهنده عدم تعریف متغیر است', 'undefined represents an uninitialized variable', 'null و undefined یکی هستند', 'null and undefined are the same', 'فقط null برای تعریف متغیر است', 'Only null is used for variable definition', 2),
(8, 'چگونه می‌توانیم یک شیء در جاوا اسکریپت تعریف کنیم؟', 'How can we define an object in JavaScript?', 'let person = {\n    name: \"John\",\n    age: 30\n};\nconsole.log(person);', 'JavaScript', 'با استفاده از کلمه کلیدی object', 'Using the keyword object', 'با استفاده از آکولادها', 'Using curly braces', 'با استفاده از کلاس‌ها', 'Using classes', 'با استفاده از آرایه‌ها', 'Using arrays', 2),
(9, 'تفاوت بین for و forEach در جاوا اسکریپت چیست؟', 'What is the difference between for and forEach in JavaScript?', 'let numbers = [1, 2, 3];\nfor (let i = 0; i < numbers.length; i++) {\n    console.log(numbers[i]);\n}\nnumbers.forEach(num => console.log(num));', 'JavaScript', 'for برای تکرار روی آرایه‌ها و سایر اشیاء استفاده می‌شود', 'for is used for iteration over arrays and other objects', 'forEach فقط برای آرایه‌ها استفاده می‌شود', 'forEach is used only for arrays', 'for و forEach یکی هستند', 'for and forEach are the same', 'فقط filter برای تغییر آرایه استفاده می‌شود', 'Only filter is used for transforming an array', 2),
(10, 'چه زمانی باید از async و await استفاده کنیم؟', 'When should we use async and await?', 'async function fetchData() {\n    let response = await fetch(\"url\");\n    let data = await response.json();\n    console.log(data);\n}\nfetchData();', 'JavaScript', 'برای مدیریت توابع همزمان', 'For managing asynchronous functions', 'برای توابع سنکرون', 'For synchronous functions', 'برای توابع معمولی', 'For regular functions', 'برای توابع غیر همزمان', 'For non-asynchronous functions', 1),
(11, 'چگونه می‌توانیم یک کلاس در جاوا اسکریپت تعریف کنیم؟', 'How can we define a class in JavaScript?', 'class Person {\n    constructor(name, age) {\n        this.name = name;\n        this.age = age;\n    }\n    greet() {\n        console.log(\"Hello, \" + this.name);\n    }\n}\nlet p = new Person(\"John\", 30);\np.greet();', 'JavaScript', 'با استفاده از کلمه کلیدی class', 'Using the keyword class', 'با استفاده از تابع سازنده', 'Using a constructor function', 'با استفاده از شیء', 'Using an object', 'با استفاده از تابع', 'Using a function', 1),
(12, 'تفاوت بین map و filter در جاوا اسکریپت چیست؟', 'What is the difference between map and filter in JavaScript?', 'let numbers = [1, 2, 3, 4, 5];\nlet doubled = numbers.map(num => num * 2);\nlet even = numbers.filter(num => num % 2 === 0);\nconsole.log(doubled);\nconsole.log(even);', 'JavaScript', 'map برای تغییر هر عنصر آرایه استفاده می‌شود', 'map is used to transform each element of an array', 'filter برای انتخاب عناصر بر اساس شرط استفاده می‌شود', 'filter is used to select elements based on a condition', 'map و filter یکی هستند', 'map and filter are the same', 'فقط filter برای تغییر آرایه استفاده می‌شود', 'Only filter is used for transforming an array', 2),
(13, 'چگونه می‌توانیم با استفاده از جاوا اسکریپت رویدادها را مدیریت کنیم؟', 'How can we handle events using JavaScript?', 'document.getElementById(\"btn\").addEventListener(\"click\", function() {\n    alert(\"Button clicked!\");\n});', 'JavaScript', 'با استفاده از متد addEventListener', 'Using the addEventListener method', 'با استفاده از متد onClick', 'Using the onClick method', 'با استفاده از متد onEvent', 'Using the onEvent method', 'با استفاده از متد attachEvent', 'Using the attachEvent method', 1),
(14, 'در جاوا اسکریپت، this به چه چیزی اشاره می‌کند؟', 'In JavaScript, what does `this` refer to?', 'function show() {\n    console.log(this);\n}\nshow();', 'JavaScript', 'به شیء جاری که متد را فراخوانی کرده است', 'To the current object that invoked the method', 'به شیء جهانی', 'To the global object', 'به متغیر محلی', 'To a local variable', 'به آرایه جاری', 'To the current array', 1),
(15, 'چگونه می‌توانیم از جاوا اسکریپت برای ساختن یک تایمر استفاده کنیم؟', 'How can we use JavaScript to create a timer?', 'setTimeout(() => {\n    console.log(\"Timer triggered\");\n}, 1000);', 'JavaScript', 'با استفاده از setTimeout', 'Using setTimeout', 'با استفاده از setInterval', 'Using setInterval', 'با استفاده از Promise', 'Using Promise', 'با استفاده از async/await', 'Using async/await', 1),
(16, 'تفاوت بین تابع عادی و تابع پیکربندی شده در جاوا اسکریپت چیست؟', 'What is the difference between a normal function and an arrow function in JavaScript?', 'function normalFunction() {}\nconst arrowFunction = () => {};', 'JavaScript', 'توابع عادی به this وابسته هستند', 'Normal functions are bound to this', 'توابع پیکربندی شده به this وابسته نیستند', 'Arrow functions are not bound to this', 'توابع پیکربندی شده دارای ویژگی‌های بیشتر هستند', 'Arrow functions have more features', 'توابع عادی و پیکربندی شده یکی هستند', 'Normal and arrow functions are the same', 2),
(17, 'چگونه می‌توانیم از جاوا اسکریپت برای ایجاد یک شیء ناتمام استفاده کنیم؟', 'How can we create a prototype object in JavaScript?', 'function Animal(name) {\n    this.name = name;\n}\nAnimal.prototype.sayHello = function() {\n    console.log(\"Hello, \" + this.name);\n};\nlet animal = new Animal(\"Tiger\");\nanimal.sayHello();', 'JavaScript', 'با استفاده از prototype', 'Using prototype', 'با استفاده از کلاس‌ها', 'Using classes', 'با استفاده از Object.create', 'Using Object.create', 'با استفاده از Object.assign', 'Using Object.assign', 1),
(18, 'چگونه می‌توانیم یک تابع را به عنوان یک مقدار به تابع دیگری ارسال کنیم؟', 'How can we pass a function as a value to another function?', 'function greet(callback) {\n    callback();\n}\ngreet(() => console.log(\"Hello!\"));', 'JavaScript', 'با استفاده از callback', 'Using callback', 'با استفاده از promise', 'Using promise', 'با استفاده از async/await', 'Using async/await', 'با استفاده از event listeners', 'Using event listeners', 1),
(19, 'تفاوت بین سند و عنصر در DOM چیست؟', 'What is the difference between document and element in the DOM?', 'let element = document.getElementById(\"myElement\");\nconsole.log(document);\nconsole.log(element);', 'JavaScript', 'document نمای کلی DOM است', 'document represents the entire DOM', 'element نمای خاصی از DOM است', 'element represents a specific part of the DOM', 'document و element یکی هستند', 'document and element are the same', 'فقط element برای ساخت DOM استفاده می‌شود', 'Only element is used to build the DOM', 2),
(20, 'چگونه می‌توانیم مقادیر پیش‌فرض را برای پارامترهای تابع در جاوا اسکریپت تنظیم کنیم؟', 'How can we set default values for function parameters in JavaScript?', 'function greet(name = \"Guest\") {\n    console.log(\"Hello, \" + name);\n}\ngreet();\ngreet(\"John\");', 'JavaScript', 'با استفاده از پارامترهای پیش‌فرض', 'Using default parameters', 'با استفاده از آرایه‌ها', 'Using arrays', 'با استفاده از Object destructuring', 'Using Object destructuring', 'با استفاده از Rest parameters', 'Using Rest parameters', 1),
(21, 'چه زمانی باید از Closures در جاوا اسکریپت استفاده کنیم؟', 'When should we use Closures in JavaScript?', 'function outer() {\n    let counter = 0;\n    function inner() {\n        counter++;\n        return counter;\n    }\n    return inner;\n}\nlet increment = outer();\nconsole.log(increment());\nconsole.log(increment());', 'JavaScript', 'برای حفظ وضعیت متغیرها', 'To maintain the state of variables', 'برای تغییر نوع داده', 'To change data types', 'برای اجرای توابع به صورت همزمان', 'To execute functions simultaneously', 'برای پردازش داده‌های ورودی', 'To process input data', 1),
(22, 'چگونه می‌توانیم با استفاده از جاوا اسکریپت مقادیر را به صورت غیر همزمان بارگذاری کنیم؟', 'How can we load values asynchronously using JavaScript?', 'async function fetchData() {\n    let response = await fetch(\"url\");\n    let data = await response.json();\n    console.log(data);\n}\nfetchData();', 'JavaScript', 'با استفاده از async/await', 'Using async/await', 'با استفاده از callbacks', 'Using callbacks', 'با استفاده از Promises', 'Using Promises', 'با استفاده از setTimeout', 'Using setTimeout', 1),
(23, 'چگونه می‌توانیم با استفاده از جاوا اسکریپت یک متد خاص را در تمام اشیاء پیاده‌سازی کنیم؟', 'How can we implement a method across all objects in JavaScript?', 'Object.prototype.sayHello = function() {\n    console.log(\"Hello\");\n};\nlet obj = {};\nobj.sayHello();', 'JavaScript', 'با استفاده از prototype', 'Using prototype', 'با استفاده از Object.create', 'Using Object.create', 'با استفاده از class', 'Using class', 'با استفاده از Object.assign', 'Using Object.assign', 1),
(24, 'چگونه می‌توانیم از جاوا اسکریپت برای شبیه‌سازی وراثت استفاده کنیم؟', 'How can we simulate inheritance using JavaScript?', 'function Animal(name) {\n    this.name = name;\n}\nAnimal.prototype.sayHello = function() {\n    console.log(\"Hello, \" + this.name);\n};\nfunction Dog(name) {\n    Animal.call(this, name);\n}\nDog.prototype = Object.create(Animal.prototype);\nDog.prototype.constructor = Dog;\nlet dog = new Dog(\"Rover\");\ndog.sayHello();', 'JavaScript', 'با استفاده از prototype inheritance', 'Using prototype inheritance', 'با استفاده از کلاس‌ها', 'Using classes', 'با استفاده از Object.create', 'Using Object.create', 'با استفاده از Object.assign', 'Using Object.assign', 1),
(25, 'تفاوت بین کلاس و شناسه در CSS چیست؟', 'What is the difference between a class and an ID in CSS?', '.myClass {\n    color: red;\n}\n#myId {\n    color: blue;\n}', 'CSS', 'کلاس برای انتخاب چندین عنصر استفاده می‌شود', 'Class is used to select multiple elements', 'شناسه برای انتخاب تنها یک عنصر استفاده می‌شود', 'ID is used to select a single element', 'کلاس و شناسه تفاوتی ندارند', 'Class and ID are the same', 'شناسه برای انتخاب چندین عنصر استفاده می‌شود', 'ID is used to select multiple elements', 2),
(26, 'تفاوت بین `padding` و `margin` چیست؟', 'What is the difference between `padding` and `margin`?', 'padding: 10px;\nmargin: 10px;', 'CSS', 'Padding فضای داخلی عنصر را تنظیم می‌کند', 'Padding adjusts the inner space of the element', 'Margin فضای خارجی عنصر را تنظیم می‌کند', 'Margin adjusts the outer space of the element', 'Padding و Margin یکی هستند', 'Padding and Margin are the same', 'Margin فضای داخلی عنصر را تنظیم می‌کند', 'Margin adjusts the inner space of the element', 1),
(27, 'چه چیزی باعث ایجاد ساختار شبکه (Grid Layout) در CSS می‌شود؟', 'What creates a grid layout in CSS?', 'display: grid;', 'CSS', 'استفاده از display: grid', 'Using display: grid', 'استفاده از display: flex', 'Using display: flex', 'استفاده از position: absolute', 'Using position: absolute', 'استفاده از float', 'Using float', 1),
(28, 'چگونه می‌توانیم یک رنگ پس‌زمینه برای یک عنصر تنظیم کنیم؟', 'How can we set a background color for an element?', 'background-color: red;', 'CSS', 'با استفاده از background-color', 'Using background-color', 'با استفاده از color', 'Using color', 'با استفاده از border-color', 'Using border-color', 'با استفاده از text-color', 'Using text-color', 1),
(29, 'تفاوت بین `flex` و `inline-flex` در CSS چیست؟', 'What is the difference between `flex` and `inline-flex` in CSS?', 'display: flex;\n\ndisplay: inline-flex;', 'CSS', 'flex به صورت بلوک نمایش داده می‌شود', 'flex is displayed as a block', 'inline-flex به صورت خطی نمایش داده می‌شود', 'inline-flex is displayed inline', 'هر دو به صورت بلوک نمایش داده می‌شوند', 'Both are displayed as block', 'هر دو به صورت خطی نمایش داده می‌شوند', 'Both are displayed inline', 2),
(30, 'چگونه می‌توانیم سایز فونت را در CSS تغییر دهیم؟', 'How can we change the font size in CSS?', 'font-size: 16px;', 'CSS', 'با استفاده از font-size', 'Using font-size', 'با استفاده از text-size', 'Using text-size', 'با استفاده از font-style', 'Using font-style', 'با استفاده از text-style', 'Using text-style', 1),
(31, 'چگونه می‌توانیم یک مرز (border) دایره‌ای شکل ایجاد کنیم؟', 'How can we create a circular border?', 'border-radius: 50%;', 'CSS', 'با استفاده از border-radius', 'Using border-radius', 'با استفاده از border-style', 'Using border-style', 'با استفاده از border-width', 'Using border-width', 'با استفاده از border-color', 'Using border-color', 1),
(32, 'چگونه می‌توانیم متن را در CSS به وسط صفحه برسانیم؟', 'How can we center text in CSS?', 'text-align: center;', 'CSS', 'با استفاده از text-align: center', 'Using text-align: center', 'با استفاده از align-items: center', 'Using align-items: center', 'با استفاده از justify-content: center', 'Using justify-content: center', 'با استفاده از margin: auto', 'Using margin: auto', 1),
(33, 'چگونه می‌توانیم در CSS افکت‌های انتقال (transitions) اضافه کنیم؟', 'How can we add transition effects in CSS?', 'transition: all 0.3s ease;', 'CSS', 'با استفاده از transition', 'Using transition', 'با استفاده از transform', 'Using transform', 'با استفاده از animation', 'Using animation', 'با استفاده از keyframes', 'Using keyframes', 1),
(34, 'تفاوت بین `absolute` و `relative` در موقعیت‌یابی (positioning) چیست؟', 'What is the difference between `absolute` and `relative` positioning?', 'position: absolute;\nposition: relative;', 'CSS', 'absolute موقعیت را نسبت به عنصر پدر ثابت می‌کند', 'absolute positions relative to the nearest positioned ancestor', 'relative موقعیت را نسبت به موقعیت قبلی عنصر ثابت می‌کند', 'relative positions relative to the element’s normal position', 'هر دو موقعیت را نسبت به صفحه نمایش ثابت می‌کنند', 'Both position relative to the viewport', 'هر دو موقعیت را نسبت به عنصر پدر ثابت می‌کنند', 'Both position relative to the nearest positioned ancestor', 2),
(35, 'React JS چیست و چه کاربردی دارد؟', 'What is React JS and what is it used for?', '// No code example', 'React', 'یک فریمورک برای ساخت اپلیکیشن‌های موبایل', 'A framework for building mobile apps', 'یک کتابخانه برای ساخت رابط کاربری', 'A library for building user interfaces', 'یک زبان برنامه‌نویسی', 'A programming language', 'یک پایگاه داده', 'A database', 2),
(36, 'تفاوت بین state و props در React چیست؟', 'What is the difference between state and props in React?', 'function MyComponent() {\n  const [count, setCount] = useState(0);\n  return <ChildComponent count={count} />;\n}', 'React', 'state برای داده‌های داخلی کامپوننت است', 'state is for internal component data', 'props برای ارسال داده از والد به فرزند است', 'props are for passing data from parent to child', 'state فقط در کامپوننت‌های کلاس قابل استفاده است', 'state is only usable in class components', 'props قابل تغییر هستند', 'props are mutable', 1),
(37, 'کامپوننت‌های کلاس در مقابل کامپوننت‌های تابعی در React چه تفاوتی دارند؟', 'What is the difference between class components and functional components in React?', 'class MyComponent extends React.Component {\n  render() {\n    return <div>Hello</div>;\n  }\n}', 'React', 'کامپوننت‌های کلاس تنها نوع کامپوننت‌های موجود در React هستند', 'Class components are the only type of components in React', 'کامپوننت‌های تابعی برای رندر کردن ساده استفاده می‌شوند', 'Functional components are used for simple rendering', 'کامپوننت‌های تابعی از hooks استفاده نمی‌کنند', 'Functional components do not use hooks', 'کامپوننت‌های کلاس از hooks استفاده می‌کنند', 'Class components use hooks', 2),
(38, 'استفاده از useEffect در React چه زمانی مناسب است؟', 'When is it appropriate to use useEffect in React?', 'function MyComponent() {\n  useEffect(() => {\n    console.log(\"Effect ran\");\n  }, []);\n}', 'React', 'برای مدیریت داده‌های داخلی کامپوننت', 'For managing internal component data', 'برای مدیریت چرخه عمر کامپوننت', 'For managing the component lifecycle', 'برای ارسال داده‌ها به فرزند', 'For sending data to child components', 'برای تعریف استایل‌های کامپوننت', 'For defining component styles', 2),
(39, 'چگونه می‌توانیم داده‌ها را در React مدیریت کنیم؟', 'How can we manage data in React?', 'const [data, setData] = useState([]);\nuseEffect(() => {\n  fetch(\"/api\").then(res => res.json()).then(setData);\n}, []);', 'React', 'با استفاده از state', 'Using state', 'با استفاده از props', 'Using props', 'با استفاده از context', 'Using context', 'همه موارد فوق', 'All of the above', 4),
(40, 'Context API در React چیست و چه زمانی از آن استفاده می‌شود؟', 'What is Context API in React and when should it be used?', 'const MyContext = React.createContext();\nfunction App() {\n  return (\n    <MyContext.Provider value={/* some value */}>\n      <ChildComponent />\n    </MyContext.Provider>\n  );\n}', 'React', 'برای مدیریت state محلی استفاده می‌شود', 'Used for managing local state', 'برای ارسال props به فرزندها در یک ساختار پیچیده', 'Used to pass props deeply within a complex tree', 'برای مدیریت ایونت‌ها', 'Used for managing events', 'برای ارسال استایل به کامپوننت‌ها', 'Used for sending styles to components', 2),
(41, 'تفاوت بین useState و useReducer در React چیست؟', 'What is the difference between useState and useReducer in React?', 'const [state, dispatch] = useReducer(reducer, initialState);\nconst [count, setCount] = useState(0);', 'React', 'useState برای مدیریت state ساده استفاده می‌شود', 'useState is used for managing simple state', 'useReducer برای مدیریت state پیچیده یا چند مرحله‌ای استفاده می‌شود', 'useReducer is for managing complex or multi-step state', 'useReducer فقط در کامپوننت‌های کلاس استفاده می‌شود', 'useReducer is only used in class components', 'useState فقط در کلاس کامپوننت‌ها استفاده می‌شود', 'useState is only used in class components', 2),
(42, 'چگونه می‌توانیم یک فرم در React مدیریت کنیم؟', 'How can we manage a form in React?', 'function MyForm() {\n  const [input, setInput] = useState(\"\");\n  const handleSubmit = (e) => {\n    e.preventDefault();\n    console.log(input);\n  };\n  return <form onSubmit={handleSubmit}><input value={input} onChange={e => setInput(e.target.value)} /></form>;\n}', 'React', 'با استفاده از state برای ذخیره مقدار ورودی', 'Using state to store input values', 'با استفاده از ref برای دسترسی مستقیم به ورودی', 'Using refs for direct access to inputs', 'با استفاده از props برای مدیریت داده فرم', 'Using props to manage form data', 'با استفاده از context برای ارسال داده فرم', 'Using context to pass form data', 1),
(43, 'چگونه از useRef در React استفاده می‌شود؟', 'How is useRef used in React?', 'function MyComponent() {\n  const inputRef = useRef();\n  const focusInput = () => inputRef.current.focus();\n  return <input ref={inputRef} />;\n}', 'React', 'برای مدیریت state کامپوننت استفاده می‌شود', 'For managing component state', 'برای دسترسی مستقیم به عناصر DOM استفاده می‌شود', 'For direct access to DOM elements', 'برای ارسال داده‌ها به فرزند استفاده می‌شود', 'For sending data to children', 'برای مدیریت چرخه عمر کامپوننت', 'For managing component lifecycle', 2),
(44, 'Lifecycle methods در کامپوننت‌های کلاس در React چیست؟', 'What are lifecycle methods in class components in React?', 'class MyComponent extends React.Component {\n  componentDidMount() {\n    console.log(\"Mounted\");\n  }\n}', 'React', 'متدهایی هستند که به مدیریت ایونت‌ها کمک می‌کنند', 'Methods that help manage events', 'متدهایی هستند که در دوره‌های مختلف حیات کامپوننت اجرا می‌شوند', 'Methods that run at different stages of the component lifecycle', 'برای مدیریت props استفاده می‌شوند', 'Used for managing props', 'برای مدیریت state استفاده می‌شوند', 'Used for managing state', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
