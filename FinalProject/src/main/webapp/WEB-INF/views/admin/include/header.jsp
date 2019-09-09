<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="/silbomi/resources/admin/assets/images/favicon.png">
    <title>Matrix Template - The Ultimate Multipurpose admin template</title>
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="/silbomi/resources/admin/assets/libs/select2/dist/css/select2.min.css">
    <link rel="stylesheet" type="text/css" href="/silbomi/resources/admin/assets/libs/jquery-minicolors/jquery.minicolors.css">
    <link rel="stylesheet" type="text/css" href="/silbomi/resources/admin/assets/libs/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" type="text/css" href="/silbomi/resources/admin/assets/libs/quill/dist/quill.snow.css">
    <link href="/silbomi/resources/admin/dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>


<!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="/silbomi/resources/admin/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="/silbomi/resources/admin/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="/silbomi/resources/admin/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="/silbomi/resources/admin/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="/silbomi/resources/admin/assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="/silbomi/resources/admin/dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="/silbomi/resources/admin/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="/silbomi/resources/admin/dist/js/custom.min.js"></script>
    <!-- This Page JS -->
    <script src="/silbomi/resources/admin/assets/libs/inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
    <script src="/silbomi/resources/admin/dist/js/pages/mask/mask.init.js"></script>
    <script src="/silbomi/resources/admin/assets/libs/select2/dist/js/select2.full.min.js"></script>
    <script src="/silbomi/resources/admin/assets/libs/select2/dist/js/select2.min.js"></script>
    <script src="/silbomi/resources/admin/assets/libs/jquery-asColor/dist/jquery-asColor.min.js"></script>
    <script src="/silbomi/resources/admin/assets/libs/jquery-asGradient/dist/jquery-asGradient.js"></script>
    <script src="/silbomi/resources/admin/assets/libs/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
    <script src="/silbomi/resources/admin/assets/libs/jquery-minicolors/jquery.minicolors.min.js"></script>
    <script src="/silbomi/resources/admin/assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="/silbomi/resources/admin/assets/libs/quill/dist/quill.min.js"></script>
    <script>
        //***********************************//
        // For select 2
        //***********************************//
        $(".select2").select2();

        /*colorpicker*/
        $('.demo').each(function() {
        //
        // Dear reader, it's actually very easy to initialize MiniColors. For example:
        //
        //  $(selector).minicolors();
        //
        // The way I've done it below is just for the demo, so don't get confused
        // by it. Also, data- attributes aren't supported at this time...they're
        // only used for this demo.
        //
        $(this).minicolors({
                control: $(this).attr('data-control') || 'hue',
                position: $(this).attr('data-position') || 'bottom left',

                change: function(value, opacity) {
                    if (!value) return;
                    if (opacity) value += ', ' + opacity;
                    if (typeof console === 'object') {
                        console.log(value);
                    }
                },
                theme: 'bootstrap'
            });

        });
        /*datwpicker*/
        jQuery('.mydatepicker').datepicker();
        jQuery('#datepicker-autoclose').datepicker({
            autoclose: true,
            todayHighlight: true
        });
        var quill = new Quill('#editor', {
            theme: 'snow'
        });

    </script>