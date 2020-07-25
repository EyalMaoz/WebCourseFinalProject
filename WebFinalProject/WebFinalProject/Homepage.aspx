<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebFinalProject.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <link href="homepage_styles.css" rel="stylesheet" type="text/css" runat="server" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poiret+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&display=swap" rel="stylesheet">
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="shopping_list.css">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
    <script src="https://kit.fontawesome.com/56942480bb.js" crossorigin="anonymous"></script>

    <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
    <link rel="shortcut icon" href="todost.png">
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,700" rel="stylesheet">
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-57635392-5"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
    <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.4.0/animate.min.css'>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.0/angular.js"> </script>
    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon">
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
  
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
                            <input class="form-control1 mr-sm-2 form-control" type="search" placeholder="Search" aria-label="Search" />
                            <button class="btn btn-outline-success my-2 my-sm-0 search-btn" type="submit">Search</button>
                        </form>
                        <a class="navbar-brand logout-btn" href="#"><i class="fa fa-sign-out" style="padding-right: 10px"></i>Logout</a>
                    </div>
                </div>
            </nav>
        </div>

        <div class="item2">
            <div class="sidebar">
                <a href="#home"><i class="fa fa-tasks my-fa"></i>Today</a>
                <a href="#services"><i class="fa fa-calendar-check-o my-fa"></i>Calendar</a>
                <a href="#clients"><i class="fa fa-fw fa-user my-fa"></i>Help</a>
                <a href="#contact" ng-click="contact_page"><i class="fa fa-fw fa-envelope my-fa"></i>Contact Us</a>
            </div>
        </div>

        <!-- Main container -->
        <div class="item3">
            <div class="buttons">
                <button class="btn btn-primary btn-sm add-list-buttons" onclick="addSideList()">Add New List</button>
                <button class="btn btn-primary btn-sm add-list-buttons">Filter</button>
            </div>
            <div class="today"></div>
            <div class="list-card" id="allListsIDParent">
            </div>
            <div class="lists">
                <h2 id="lists-headline">My Lists</h2>
                <div>
                    <ul class="list-lists" id="listOflists">
                    </ul>
                </div>
            </div>
        </div>






        <!-- functions for the ToDoLists -->
        <script>
            CurrentTodoID = 0;

            var Tasks = [
                //First List
                { "id": "0", "text": "task 1 in list 1", "isDone": "new", "listID": "0", "listName": "First List" },
                { "id": "1", "text": "task 2 in list 1", "isDone": "new", "listID": "0", "listName": "First List" },
                { "id": "2", "text": "task 3 in list 1", "isDone": "new", "listID": "0", "listName": "First List" },

                //Second list
                { "id": "0", "text": "task 1 in list 2", "isDone": "done", "listID": "1", "listName": "Second List" },
                { "id": "1", "text": "task 2 in list 2", "isDone": "done", "listID": "1", "listName": "Second List" },
                { "id": "2", "text": "task 3 in list 2", "isDone": "done", "listID": "1", "listName": "Second List" },
                { "id": "3", "text": "task 4 in list 2", "isDone": "done", "listID": "1", "listName": "Second List" },

            ];

            function chooseList(id) {
                var old = document.getElementById("card" + CurrentTodoID);
                if (old != undefined) {
                    old.style.display = "none";
                }
                var newd = document.getElementById("card" + id);
                if (newd != undefined) {
                    newd.style.display = "flex";
                }
                CurrentTodoID = id;

            }

            function CreateLists() {
                var alreadyCreated = [];

                $.each(Tasks, function (index, task) {

                    if (alreadyCreated.indexOf(Tasks[index].listID) == -1) {
                        // CreateListHTML(Tasks[index].listID, Tasks[index].listName);
                        addSideList(Tasks[index].listID, Tasks[index].listName);
                        alreadyCreated.push(Tasks[index].listID);
                    }

                    addTask(Tasks[index].text, Tasks[index].isDone, Tasks[index].listID, Tasks[index].id, true);
                    isFirst = false;
                });
            }

            isFirst = true;
            function CreateListHTML(todoId, ListName) {
                var style = isFirst ? "" : "style = 'display: none'";
                if (isFirst) CurrentTodoID = todoId;
                var div = document.createElement("div");
                div.setAttribute("class", "card");
                if (!isFirst) div.setAttribute("style", "display: none");
                div.setAttribute("id", "card" + todoId);
                var html = `<div class="new-list">
                        <div>
                            <div class="list-name">
                                <input type="text" class ="form-control add-list-name" value = \"${ListName}\" placeholder="My List" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="simple">
                                <div class="add-control">
                                    <div class="form-group has-feedback">
                                        <input type="text" class ="form-control add-item" id = "input${todoId}" placeholder="Add a task..."/>
                                        <i class="fa fa-plus form-control-feedback add-btn" title="Add item"></i>
                                    </div>
                                </div>
                                <p class="err text-danger text-center hidden"><i class="fa fa-warning"></i>Oops! Please, enter task</p>
                                <ul class ="todo-list" id=${"todo" + todoId}>
                                </ul>
                            </div>
                        </div>
                    </div>`
                //var html = `<div class="card" ${style} id=card${todoId}>
                //    <div class="new-list">
                //        <div>
                //            <div class="list-name">
                //                <input type="text" class ="form-control " value = \"${ListName}\" id="add-list-name" placeholder="My List" />
                //            </div>
                //        </div>
                //        <div class="row">
                //            <div class="simple">
                //                <div class="add-control">
                //                    <div class="form-group has-feedback">
                //                        <input type="text" class ="form-control" id="add-item" placeholder="Add a task..."/>
                //                        <i class="fa fa-plus form-control-feedback add-btn" title="Add item"></i>
                //                    </div>
                //                </div>
                //                <p class="err text-danger text-center hidden"><i class="fa fa-warning"></i>Oops! Please, enter name item</p>
                //                <ul class ="todo-list" id=${"todo" + todoId}>
                //                </ul>
                //            </div>
                //        </div>
                //    </div>
                //</div>`
                div.innerHTML = html;
                //document.getElementById("allListsIDParent").innerHTML += html;
                document.getElementById("allListsIDParent").appendChild(div);
                SetEvents();
            }

            function DeleteListHTML(todoId) {
                document.getElementById("card" + todoId).remove();
            }



            function addSideList(id, name) {
                if (id == undefined) id = generateID();
                if (name == undefined) name = "New List";
                var ul = document.getElementById("listOflists");
                var li = document.createElement("li");
                li.setAttribute("class", "item-lists");
                li.setAttribute("id", id);
                li.setAttribute("onclick", "chooseList(this.id)");
                var span = document.createElement("span");
                span.setAttribute("class", 'close');
                span.onclick = function () {
                    var div = this.parentElement;
                    div.style.display = "none";
                    RemoveList(id, name);
                }
                span.innerHTML = "&times";
                li.appendChild(span);
                li.appendChild(document.createTextNode(name));
                ul.appendChild(li);
                CreateListHTML(id, name);
            }

            function RemoveList(listID, listName) {
                var indices = [];
                for (var i = 0; i < Tasks.length ; i++) {
                    if (Tasks[i].listID == listID) {
                        indices.push(i);
                    }
                }
                for (var i = 0; i < indices.length ; i++) {
                    Tasks.splice(indices[i], 1);
                }
                DeleteListHTML(listID);
            }

            function addTask(text, status, todoID, id, noUpdate) {
                var id = id ? id : generateID();
                var c = status === "done" ? "danger" : "";
                var item = '<li class=task_item data-id="' + id + '" class="animated flipInX ' + c + '"><div class="checkbox my_checkbox"><span class="close"><i class="fa fa-times"></i></span><label><span class="checkbox-mask"></span><input type="checkbox" />' +
                  text + "</label></div></li>";

                var isError = $(".add-item").hasClass("hidden");

                if (text === "") {
                    $(".err")
                      .removeClass("hidden")
                      .addClass("animated bounceIn");
                    setTimeout(function () {
                        $(".err").addClass("hidden");
                    }, 2000);
                } else {
                    $(".err").addClass("hidden");

                    $("#todo" + todoID).append(item);
                }

               // $(".refresh").removeClass("hidden");



                $(".add-item")
                  .val("")
                  .attr("placeholder", "Add a task...");
                setTimeout(function () {
                    $(".todo-list li").removeClass("animated flipInX");
                }, 500);

            }

            // Events Handlers
            function SetEvents() {
                $(".add-btn").off("click");
                $(".add-item").off("keypress");
                $(".todo-list").off("click");
                $(".add-list-name").off("click");

                $(".todo-list").on("click", 'input[type="checkbox"]', ClickOnTaskCheckBox);
                $(".todo-list").on("click", ".close", ClickOnTaskCloseButton);
                $(".add-btn").on("click", AddButton);
                $(".add-item").keypress(AddWithEnter);
                $(".add-list-name").on("focusout", ChangeListName);

            }

            function ChangeListName(e) {
                newName = e.currentTarget.value;
                $.each(Tasks, function (index) {
                    if (Tasks[index].listID == CurrentTodoID) {
                        Tasks[index].listName = newName;
                    }
                });
                // update side list
                document.getElementById(CurrentTodoID).textContent = newName;
            }

            function AddButton(e) {
                var itemVal = document.getElementById("input" + CurrentTodoID).value;
                addTask(itemVal, "new", CurrentTodoID);
                $(".add-item").focus();
            }

            function AddWithEnter(e) {
                if (e.which == 13) {
                    var itemVal = document.getElementById("input" + CurrentTodoID).value;
                    addTask(itemVal, "new", CurrentTodoID);
                    $(".add-item").focus();
                }
            }

            function ClickOnTaskCheckBox() {
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
            }

            function ClickOnTaskCloseButton() {
                var box = $(this)
                 .parent()
                 .parent();

                if ($(".todo-list li").length == 1) {
                    box.removeClass("animated flipInX").addClass("animated bounceOutLeft");
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
                deleteTodo(box.data().id);
            }
            //

            //var state = [];

            function generateID() {
                var randLetter = String.fromCharCode(65 + Math.floor(Math.random() * 26));
                return randLetter + Date.now();
            }

            function deleteTodo(id) {
                for (var i = 0; i < Tasks.length ; i++) {
                    if (Tasks[i].id == id && Tasks[i].listID == CurrentTodoID) {
                        Tasks.splice(i, 1);
                        return;
                    }
                }
            }


            //function refresh() {
            //    $(".todo-list li").each(function (i) {
            //        $(this)
            //          .delay(70 * i)
            //          .queue(function () {
            //              $(this).addClass("animated bounceOutLeft");
            //              $(this).dequeue();
            //          });
            //    });
            //}


            $(document).ready(function () {

                CreateLists();

                todayContainer.innerHTML = randomWord + n;

                var err = $(".err"),
                  formControl = $(".add-item");
                isError = formControl.hasClass("hidden");

                if (!isError) {
                    formControl.blur(function () {
                        err.addClass("hidden");
                    });
                }
                $(".todo-list").sortable()
                $(".todo-list").disableSelection();

                $(".refresh").on("click", refresh);

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


            // function isnt activated 
            function logout() {
                SaveTasks();
                Response.Redirect("Login.aspx");
            }


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

            // Day stuff:
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
            var randomWord = randomWordArray[Math.floor(Math.random() * randomWordArray.length)];

        </script>
</body>

</html>
