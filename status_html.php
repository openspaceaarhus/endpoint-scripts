<html>
<head>

    <link rel="stylesheet" type="text/css" href="css/spaceapi.css">

    <script src="js/jquery-1.10.1.min.js"></script>
    <script src="/js/spaceapi.js"></script>

    <script>
        $(document).ready(function(){

            // uncomment one of both in order to use either the
            // monster or a simple button to display the status
            $("#svg4534").fadeIn();
            //$("#button").fadeIn();
        });

    </script>
</head>
<body>

    <h2></h2>
    <div id="button"></div>

    <?php
        // we cannot use an img tag for the svg since we're manipulating
        // the DOM of it to animate the state changes
        include('img/monster/monster.svg');
    ?>

</body>
</html>
