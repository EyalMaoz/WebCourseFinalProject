<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebFinalProject.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="homepage_styles.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poiret+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&display=swap" rel="stylesheet">
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>--%>
    <link rel="stylesheet" type="text/css" href="shopping_list.css">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>--%>
    <script src="https://kit.fontawesome.com/56942480bb.js" crossorigin="anonymous"></script>
    <%--<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>--%>
    <%--<script src='http://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>--%>
    <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
    <link rel="shortcut icon" href="todost.png">
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,700" rel="stylesheet">
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-57635392-5"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
    <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.4.0/animate.min.css'>
    <%--<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>--%>
    <script src= "https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.0/angular.js"> </script>
    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon">
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Bootstrap core CSS -->
    <%--<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>
    <!--external css-->
    <%--<link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />--%>

     <%--<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>--%>
    <%--<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>--%>
    <%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>--%>

    <title>Panda Helper</title>

</head>

<body>
          
              
    <div class="grid-container">
        <div class="item1">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand" id="pandalogo" href="#"></a>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    </ul>
                    <div id="rightNav">
                        <form class="form-inline my-2 my-lg-0">
                            <input class="form-control1 mr-sm-2 form-control" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0 search-btn" type="submit">Search</button>
                        </form>
                        <a class="navbar-brand logout-btn" href="#"><i class="fa fa-sign-out" style="padding-right:10px"></i>Logout</a>
                    </div>
                </div>
            </nav>
        </div>

        <div class="item2">
            <div class="sidebar">
                <a href="#home"><i class="fa fa-tasks my-fa"></i>Today</a>
                <a href="#services"><i class="fa fa-calendar-check-o my-fa"></i>Calendar</a>
                <a href="#clients"><i class="fa fa-fw fa-user my-fa"></i>Help</a>
                <a href="#contact" ng-click ="contact_page"><i class="fa fa-fw fa-envelope my-fa"></i>Contact Us</a>
            </div>
        </div>

        <!-- Main container -->
        <div class="item3">
            <div class ="buttons">
                <button class="btn btn-primary btn-sm add-list-buttons" onclick="AddNewList()">Add New List</button>
                <button class="btn btn-primary btn-sm add-list-buttons">Filter</button>
            </div>
            <div class="today"></div>
            <div class="list-card">
                <div class="card"> 
                     <div class="new-list">
                         <div >
                        <div class="list-name">
                                <input type="text" class="form-control " id="add-list-name" placeholder="My List" onclick="addListName"/>
                        </div>
                           <i class="fa fa-save form-control-feedback" style="color: #87b189;" onclick="SaveList()"></i>
                         </div>
                        <div class="row">
                            <div class="simple">
                                <div class="add-control">
                                    <div class="form-group has-feedback">
                                        <input type="text" class="form-control" id="add-item" placeholder="Add a task..." />
                                        <i class="fa fa-plus form-control-feedback add-btn" title="Add item"></i>
                                    </div>
                                </div>
                                <p class="err text-danger text-center hidden"><i class="fa fa-warning"></i>Oops! Please, enter name item</p>
                                <ul class="todo-list">
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="lists">
            <h2 id="lists-headline">My Lists</h2>
            <div"> 
                <ul class="list-lists">
             <li class="item-lists">first</li>
                </ul>
            </div>
            </div>
        </div>






        <!-- functions for the ToDoLists -->
        <script>
            var state = [];
           
            function setDefaultState() {
                var id = generateID();
                var baseState = {};
                baseState[id] = {
                    status: "new",
                    id: id,
                    title: "Go to the store"
                };
                syncState(baseState);
            }

            function generateID() {
                var randLetter = String.fromCharCode(65 + Math.floor(Math.random() * 26));
                return randLetter + Date.now();
            }

            function pushToState(title, status, id) {
                var baseState = getState();
                baseState[id] = { id: id, title: title, status: status };
                syncState(baseState);
            }

            function setToDone(id) {
                var baseState = getState();
                if (baseState[id].status === 'new') {
                    baseState[id].status = 'done'
                } else {
                    baseState[id].status = 'new';
                }

                syncState(baseState);
            }

            function deleteTodo(id) {
                console.log(id)
                var baseState = getState();
                delete baseState[id]
                syncState(baseState)
            }

            function resetState() {
                localStorage.setItem("state", null);
            }

            function syncState(state) {
                localStorage.setItem("state", JSON.stringify(state));
            }

            function getState() {
                return JSON.parse(localStorage.getItem("state"));
            }

            function addItem(text, status, id, noUpdate) {
                var id = id ? id : generateID();
                var c = status === "done" ? "danger" : "";
                var item = '<li class=task_item data-id="' + id + '" class="animated flipInX ' + c + '"><div class="checkbox my_checkbox"><span class="close"><i class="fa fa-times"></i></span><label><span class="checkbox-mask"></span><input type="checkbox" />' +
                  text + "</label></div></li>";

                var isError = $("#add-item").hasClass("hidden");

                if (text === "") {
                    $(".err")
                      .removeClass("hidden")
                      .addClass("animated bounceIn");
                } else {
                    $(".err").addClass("hidden");
                    $(".todo-list").append(item);
                }

                $(".refresh").removeClass("hidden");



                $("#add-item")
                  .val("")
                  .attr("placeholder", "Add a task...");
                setTimeout(function () {
                    $(".todo-list li").removeClass("animated flipInX");
                }, 500);

                if (!noUpdate) {
                    pushToState(text, "new", id);
                }
            }

            function refresh() {
                $(".todo-list li").each(function (i) {
                    $(this)
                      .delay(70 * i)
                      .queue(function () {
                          $(this).addClass("animated bounceOutLeft");
                          $(this).dequeue();
                      });
                });

                setTimeout(function () {
                    $(".todo-list li").remove();
                    $(".err").addClass("hidden");
                }, 800);
            }

            $(function () {
                var err = $(".err"),
                  formControl = $("#add-item"),
                  isError = formControl.hasClass("hidden");

                if (!isError) {
                    formControl.blur(function () {
                        err.addClass("hidden");
                    });
                }

                $(".add-btn").on("click", function () {
                    console.log('in')
                    var itemVal = $("#add-item").val();
                    addItem(itemVal);
                    formControl.focus();
                });

                $(".refresh").on("click", refresh);

                $(".todo-list").on("click", 'input[type="checkbox"]', function () {
                    var li = $(this)
                      .parent()
                      .parent()
                      .parent();
                    li.toggleClass("danger");
                    li.toggleClass("animated flipInX");

                    setToDone(li.data().id);

                    setTimeout(function () {
                        li.removeClass("animated flipInX");
                    }, 500);
                });

                $(".todo-list").on("click", ".close", function () {
                    var box = $(this)
                      .parent()
                      .parent();

                    if ($(".todo-list li").length == 1) {
                        box.removeClass("animated flipInX").addClass("animated                bounceOutLeft");
                        setTimeout(function () {
                            box.remove();

                            $(".refresh").addClass("hidden");
                        }, 500);
                    } else {
                        box.removeClass("animated flipInX").addClass("animated bounceOutLeft");
                        setTimeout(function () {
                            box.remove();
                        }, 500);
                    }
                    deleteTodo(box.data().id)
                });



                $(".add-item").keypress(function (e) {
                    if (e.which == 13) {
                        var itemVal = $(".add-item").val();
                        addItem(itemVal);
                    }
                });
               // $(".todo-list").sortable();
                //$(".todo-list").disableSelection();
            });

            var todayContainer = document.querySelector(".today");


            var d = new Date();


            var weekday = new Array(7);
            weekday[0] = "Sunday!";
            weekday[1] = "Monday!";
            weekday[2] = "Tuesday!";
            weekday[3] = "Wednesday!";
            weekday[4] = "Thursday!";
            weekday[5] = "Friday!";
            weekday[6] = "Saturday!";


            var n = weekday[d.getDay()];


            var randomWordArray = Array(
              "Oh my, it's ",
              "Whoop, it's ",
              "Happy ",
              "Seems it's ",
              "Awesome, it's ",
              "Have a nice ",
              "Happy fabulous ",
              "Enjoy your "
            );

            var randomWord =
              randomWordArray[Math.floor(Math.random() * randomWordArray.length)];


            todayContainer.innerHTML = randomWord + n;

            $(document).ready(function () {

                $.each(Tasks, function (index, task) {
                    addItem(Tasks[index].text, Tasks[index].isDone, Tasks[index].id, true);
                });

                // Eyal - Load from browser if we want:
                /*var state = getState();

                if (!state) {
                    setDefaultState();
                    state = getState();
                }

                Object.keys(state).forEach(function (todoKey) {
                    var todo = state[todoKey];
                    addItem(todo.title, todo.status, todo.id, true);
                });*/
                
                var mins, secs, update;

                init();
                function init() {
                    (mins = 25), (secs = 59);
                }


                set();
                function set() {
                    $(".mins").text(mins);
                }


                $("#start").on("click", start_timer);
                $("#reset").on("click", reset);
                $("#inc").on("click", inc);
                $("#dec").on("click", dec);

                function start_timer() {

                    set();

                    $(".dis").attr("disabled", true);

                    $(".mins").text(--mins);
                    $(".separator").text(":");
                    update_timer();

                    update = setInterval(update_timer, 1000);
                }

                function update_timer() {
                    $(".secs").text(secs);
                    --secs;
                    if (mins == 0 && secs < 0) {
                        reset();
                    } else if (secs < 0 && mins > 0) {
                        secs = 59;
                        --mins;
                        $(".mins").text(mins);
                    }
                }


                function reset() {
                    clearInterval(update);
                    $(".secs").text("");
                    $(".separator").text("");
                    init();
                    $(".mins").text(mins);
                    $(".dis").attr("disabled", false);
                }


                function inc() {
                    mins++;
                    $(".mins").text(mins);
                }


                function dec() {
                    if (mins > 1) {
                        mins--;
                        $(".mins").text(mins);
                    } else {
                        alert("This is the minimum limit.");
                    }
                }
            });



            // Create a "close" button and append it to each list item
            var myNodelist = document.getElementsByTagName("task_item");
            var i;
            for (i = 0; i < myNodelist.length; i++) {
                var span = document.createElement("SPAN");
                var txt = document.createTextNode("\u00D7");
                span.className = "close";
                span.appendChild(txt);
                myNodelist[i].appendChild(span);
            }

            // Click on a close button to hide the current list item
            var close = document.getElementsByClassName("close");
            var i;
            for (i = 0; i < close.length; i++) {
                close[i].onclick = function () {
                    var div = this.parentElement;
                    div.style.display = "none";
                }
            }

            // Add a "checked" symbol when clicking on a list item
            var list = document.querySelector('ul');
            list.addEventListener('click', function (ev) {
                if (ev.target.tagName === 'LI') {
                    ev.target.classList.toggle('checked');
                }
            }, false);

            // Create a new list item when clicking on the "Add" button
            function newElement() {
                var li = document.createElement("li");
                var inputValue = document.getElementById("myInput").value;
                var t = document.createTextNode(inputValue);
                li.appendChild(t);
                if (inputValue === '') {
                    alert("You must write something!");
                } else {
                    document.getElementById("myUL").appendChild(li);
                }
                document.getElementById("myInput").value = "";

                var span = document.createElement("SPAN");
                var txt = document.createTextNode("\u00D7");
                span.className = "close";
                span.appendChild(txt);
                li.appendChild(span);

                for (i = 0; i < close.length; i++) {
                    close[i].onclick = function () {
                        var div = this.parentElement;
                        div.style.display = "none";
                    }
                }
            }

/////////////////////////////////////////////////////////////////////////////////
////----------------functions for the page------------------------------------////
            var card_state = 1;
            // Add a new list
            function AddNewList() {
                //card_state++;
                //var new_list = '<div class="new-list new-list-${card_state}"> \
                //        <div class="list-name"> \
                //                <input type="text" class="form-control " id="add-list-name-' + card_state + '" placeholder="My First List" onclick="addListName"/> \
                //        </div> \
                //        <div class="row"> \
                //            <div class="simple"> \
                //                <div class="add-control"> \
                //                    <div class="form-group has-feedback"> \
                //                        <input type="text" class="form-control" id="add-item-' + card_state + '" placeholder="Add a task..." /> \
                //                        <i class="fa fa-plus form-control-feedback add-btn" title="Add item" onclick="addTask('+card_state+')"></i> \
                //                    </div> \
                //                </div> \
                //                <p class="err text-danger text-center hidden"><i class="fa fa-warning"></i>Oops! Please, enter name item</p> \
                //                <ul class="todo-list-' + card_state + '"> \
                //                </ul> \
                //            </div> \
                //        </div> \
                //    </div>';
                //var html = document.getElementById('cards').innerHTML;
                //var newcard = `<div class="card card-${card_state}">${new_list}</div>`;
                //html += newcard;
                //document.getElementById('cards').innerHTML = html;


            }


            // function isnt activated 
            function logout() {
                SaveTasks();
                Response.Redirect("Login.aspx");
            }

            var Tasks = [{ "id": "0", "text": "task1Test", "isDone": "new" }, { "id": "1", "text": "task2Test", "isDone": "done" }];

            function SaveTasks() {
                $.ajax({
                    url: "webservice.asmx/SaveTasks",
                    data: { tasksArray: JSON.stringify(Tasks) },
                    dataType: 'json',
                    type: 'POST',
                    success: function (res) {
                    },
                    error: function (er) {

                    }
                }).done();
            }

            function SaveList() {
                //save list with its tasks in DB
 
            }
            
        </script>
</body>

</html>
