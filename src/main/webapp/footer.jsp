        <footer>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.3.min.js"><\/script>')</script>
            <script src="js/plugins.js"></script>
            <script src="js/main.js"></script>
            <script type="text/javascript" src="js/navi.js"></script>

            <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
            <script>
            /*    (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
                function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
                e=o.createElement(i);r=o.getElementsByTagName(i)[0];
                e.src='https://www.google-analytics.com/analytics.js';
                r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
                ga('create','UA-XXXXX-X','auto');ga('send','pageview'); */
            </script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
            <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
            <script type="text/javascript">
               // var windowSize = $(window).width();
                var mater = 1;
                function expander(event){
                    if (mater === 1){
                        $("#to-multi-2").show(1000);
                        $("#from-multi-2").show(1000);
                        $("#multi-put").val(2);
                        mater = 2;
                        $("#remove").show(1000);
                    }else if (mater === 2) {
                        $("#to-multi-3").show(1000);
                        $("#from-multi-3").show(1000);
                        $("#multi-put").val(3);
                        mater = 3;
                    }else if (mater === 3) {
                        $("#to-multi-4").show(1000);
                        $("#from-multi-4").show(1000);
                        $("#multi-put").val(4);
                        mater = 4;
                    }else if (mater === 4) {
                        $("#to-multi-5").show(1000);
                        $("#from-multi-5").show(1000);
                        $("#multi-put").val(5);
                        mater = 5;
                    }else if (mater === 5) {
                        $("#to-multi-6").show(1000);
                        $("#from-multi-6").show(1000);
                        $("#multi-put").val(6);
                        mater = 6;
                        $("#add").hide(1000);
                    }
                }
                function contractor(event){
                    if (mater === 6) {
                        $("#to-multi-6").hide(1000);
                        $("#from-multi-6").hide(1000);
                        $("#multi-put").val(5);
                        mater = 5;
                        $("#add").show(1000);
                    } else if (mater === 5) {
                        $("#to-multi-5").hide(1000);
                        $("#from-multi-5").hide(1000);
                        $("#multi-put").val(4);
                        mater = 4;
                    }  else if (mater === 4) {
                        $("#to-multi-4").hide(1000);
                        $("#from-multi-4").hide(1000);
                        $("#multi-put").val(3);
                        mater = 3;
                    }  else if (mater === 3) {
                        $("#to-multi-3").hide(1000);
                        $("#from-multi-3").hide(1000);
                        $("#multi-put").val(2);
                        mater = 2;
                    } else if (mater === 2) {
                        $("#to-multi-2").hide(1000);
                        $("#from-multi-2").hide(1000);
                        $("#multi-put").val(1);
                        mater = 1;
                        $("#remove").hide(1000);
                    }
                } 
                $('#search').tabs();
                $("#dd").datepicker({
                    inline: true,
                    dateFormat: 'yy-mm-dd',
                    defaultDate: new Date()
                });
                $("#dd-round").datepicker({
                    inline: true,
                    dateFormat: 'yy-mm-dd',
                    defaultDate: new Date()
                });
                $("#dd-multi").datepicker({
                    inline: true,
                    dateFormat: 'yy-mm-dd',
                    defaultDate: new Date()
                });
                $("#one-way-submit").button();
                $("#round-trip-submit").button();
                $("#multi-city-submit").button();
                $("#add").button();
                $("#add").click(expander);
                $("#remove").button();
                $("#remove").click(contractor);
               // if (windowSize >= 700) {
                    $("#flight-class").buttonset();    
               // }
                $("#flight-class-round").buttonset();
                $("#flight-class-multi").buttonset();
                $("#adult").spinner({min: 0, max: 10});
                $("#adult-round").spinner({min: 0, max: 10});
                $("#adult-multi").spinner({min: 0, max: 10});
                $("#child").spinner({min: 0, max: 10});
                $("#child-round").spinner({min: 0, max: 10});
                $("#child-multi").spinner({min: 0, max: 10});
                $("#infant").spinner({min: 0, max: 10});
                $("#infant-round").spinner({min: 0, max: 10});
                $("#infant-multi").spinner({min: 0, max: 10});
                
                /* from here goes the route manager */
           /*     $("#from-multi").change(function() {
                    $("#to-multi-2").val($("#from-multi").val());
                });
                $("#to-multi").change(function() {
                    $("#from-multi-2").val($("#to-multi").val());
                });
                $("#from-multi-2").change(function() {
                    $("#to-multi-3").val($("#from-multi-2").val());
                });
                $("#to-multi-2").change(function() {
                    $("#from-multi-3").val($("#to-multi-2").val());
                });
                $("#to-multi-3").change(function() {
                    $("#from-multi-4").val($("#to-multi-3").val());
                });
                $("#from-multi-3").change(function() {
                    $("#to-multi-4").val($("#from-multi").val());
                });
                $("#to-multi-4").change(function() {
                    $("#from-multi-5").val($("#to-multi-4").val());
                });
                $("#from-multi-4").change(function() {
                    $("#to-multi-5").val($("#from-multi").val());
                });
                $("#from-multi-5").change(function() {
                    $("#to-multi-6").val($("#from-multi").val());
                });  */

                $(document).ready(function() {
                    var ports = [];
                    function XmlParsing(xml){
                        $(xml).find("iata_airport_codes").each(function(){
                            ports.push({value: $(this).find("code").text()+" - "+$(this).find("airport").text(), codez: $(this).find("code").text()});
                        })
                    }
                    function setAutoComplete() {
                        $("#to").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#to").val(ui.item.value);
                                $("#to").val(ui.item.codez);
                            }
                        });
                        $("#to-round").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#to-round").val(ui.item.value);
                                $("#to-round").val(ui.item.codez);
                            }
                        });
                        $("#to-multi").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#to-multi").val(ui.item.value);
                                $("#to-multi").val(ui.item.codez);
                            }
                        });
                        $("#to-multi-2").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#to-multi-2").val(ui.item.value);
                                $("#to-multi-2").val(ui.item.codez);
                            }
                        });
                        $("#to-multi-3").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#to-multi-3").val(ui.item.value);
                                $("#to-multi-3").val(ui.item.codez);
                            }
                        });
                        $("#to-multi-4").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#to-multi-4").val(ui.item.value);
                                $("#to-multi-4").val(ui.item.codez);
                            }
                        });
                        $("#to-multi-5").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#to-multi-5").val(ui.item.value);
                                $("#to-multi-5").val(ui.item.codez);
                            }
                        });
                        $("#to-multi-6").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#to-multi-6").val(ui.item.value);
                                $("#to-multi-6").val(ui.item.codez);
                            }
                        });
                        $("#from").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#from").val(ui.item.value);
                                $("#from").val(ui.item.codez);
                            }
                        });
                        $("#from-round").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#from-round").val(ui.item.value);
                                $("#from-round").val(ui.item.codez);
                            }
                        });
                        $("#from-multi").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#from-multi").val(ui.item.value);
                                $("#from-multi").val(ui.item.codez);
                            }
                        });
                        $("#from-multi-2").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#from-multi-2").val(ui.item.value);
                                $("#from-multi-2").val(ui.item.codez);
                            }
                        });
                        $("#from-multi-3").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#from-multi-3").val(ui.item.value);
                                $("#from-multi-3").val(ui.item.codez);
                            }
                        });
                        $("#from-multi-4").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#from-multi-4").val(ui.item.value);
                                $("#from-multi-4").val(ui.item.codez);
                            }
                        });
                        $("#from-multi-5").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#from-multi-5").val(ui.item.value);
                                $("#from-multi-5").val(ui.item.codez);
                            }
                        });
                        $("#from-multi-6").autocomplete({
                            source: ports,
                            minLength: 4,
                            select: function(event, ui) {
                                event.preventDefault();
                                $("#from-multi-6").val(ui.item.value);
                                $("#from-multi-6").val(ui.item.codez);
                            }
                        });
                    }
                    $.ajax({
                        type: "GET",
                        url: "airport-codes.xml",
                        dataType: "xml",
                        success: XmlParsing,
                        complete: setAutoComplete,
                        failure: function(data) {
                            alert("XML data sheet was not found.");
                        }
                    });
                });
                function hackAutoComplete(){
                    $.extend($.ui.autocomplete, {
                        filter: function(array, term){
                            var matcher = new RegExp("^" + term, "i");
                            return $.grep(array, function(value){
                                return matcher.test(value.value);// || value.value || value);
                            });
                        }
                    });
                }
            </script>
        </footer>