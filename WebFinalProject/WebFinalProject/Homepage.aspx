<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebFinalProject.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <link href="homepage_styles.css" rel="stylesheet" type="text/css" runat="server" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poiret+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&display=swap" rel="stylesheet">
    <%--    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>--%>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

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
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;600&display=swap" rel="stylesheet">

    <title>Panda Helper</title>

</head>

<body>


    <div class="grid-container">
        <div class="item1">
            <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
                    <span></span>
                </button>
                <a class="navbar-brand" id="pandalogo" onclick="MenuClick(0)"></a>
                <div class=" navbar-collapse" id="navbarTogglerDemo03">
                    <div id="rightNav">

                        <a class="navbar-brand logout-btn" onclick="Logout()"><i class="fa fa-sign-out" style="padding-right: 10px"></i>Logout</a>
                    </div>
                </div>
            </nav>
        </div>

        <div class="item2">
            <div class="sidebar" data-toggle="collapse">
                <p onclick="MenuClick(0)"><i class="fa fa-tasks my-fa"></i>My Lists</p>
                <p onclick="MenuClick(1)"><i class="fa fa-fw fa-user my-fa"></i>Help</p>
                <p onclick="MenuClick(2)"><i class="fa fa-fw fa-envelope my-fa"></i>About Us</p>
            </div>
        </div>

        <!-- Main container -->
        <%--        My Lists page:      --%>
        <div id="listPage" class="item3" style="display:grid ">
            <div class="buttons">
                <button class="btn btn-primary btn-sm add-list-buttons" onclick="addSideList()">Add New List</button>
            </div>
            <div class="today"></div>
            <div class="list-card" id="allListsIDParent">
            </div>
            <div class="lists">
                <h2 id="lists-headline" class="text-center"> <i class="fa fa-tasks my-fa"></i> My Lists</h2>
            
                <div>
                    <ul class="list-lists" id="listOflists">
         
                    </ul>
                </div>
            </div>
        </div>
        <%--        Help page:      --%>
        <div  id="helpPage" class="item3" style="display: none; Grid-template-rows: none !important;">
            <p style ="color:#000000">Help Page</p>
        </div>
        <%--        Contact us page:      --%>
<div  id="contactUsPage" class="item4" style="display: none">
             <!-- Begin Page Content -->

 <div class="wrapper">
<div class="about-section">
  <h1 style="font-weight:bold">About Us</h1>
   
  <p style="font-family: 'Raleway', sans-serif;">Hi, We are Linoy and Eyal, <br /> We are software engineering students that wants to remember everything and to make your life easier <br/> so we build the PandaHelper to help us do it ! Hope you enjoy it!</p>
</div>

<div class="row">
                <div class="team-section">
                                    <h2 style="text-align:center; font-family: 'Poiret One'; font-weight:bold;">Our Team</h2>
                  <div class="inner-width">

                    <div class="pers">
                      <div class="pe">
                        <img src="https://i.ibb.co/7XLsXMX/Whats-App-Image-2020-07-26-at-13-04-29.jpg" alt="rafeh">
                        <div class="p-name">Linoy Bar-Gal</div>
                        <div class="p-des">Developer and Designer</div>
                        <div class="p-sm">
                          <a href="https://www.facebook.com/linoyb"><i class="fab fa-facebook-f"></i></a>
                          <a href="https://www.instagram.com/linoybargal/"><i class="fab fa-instagram"></i></a>
                          <a href="mailto:linoy18@gmail.com"><i class="fa fa-envelope"></i></a>
                        </div>
                      </div>

                      <div class="pe">
                        <img src="https://i.ibb.co/7p3xnGL/44793750-312043066073847-939891612333716360-n.jpg" alt="rafeh">
                        <div class="p-name">Eyal Maoz</div>
                        <div class="p-des">Developer</div>
                        <div class="p-sm">
                          <a href="https://www.facebook.com/eyal.maoz.5"><i class="fab fa-facebook-f"></i></a>
                          <a href="https://www.instagram.com/eyalmaoz/"><i class="fab fa-instagram"></i></a>
                          <a href="mailto:eyalvfs@gmail.com"><i class="fa fa-envelope"></i></a>
                        </div>
                      </div>

                        
                    </div>
                  </div>
                </div>
  </div>
            </div>



        <!-- functions for the ToDoLists -->
        <script>

            function MenuClick(pageNum) {
                pageArr[0].style.display = "none";
                pageArr[1].style.display = "none";
                pageArr[2].style.display = "none";
                pageArr[pageNum].style.display = "grid";
            }

            var pageArr;
            var CurrentListName = "New List";
            var CurrentTodoID = 0;
            var DefaultTask = {
                "id": generateID(),
                "text": "Example Task",
                "isDone": "new",
                "listID": "0",// Replace those according to list
                "listName": ""//
            };

            var Tasks = [
                ////First List
                //{ "id": "0", "text": "task 1 in list 1", "isDone": "new", "listID": "0", "listName": "First List" },
                //{ "id": "1", "text": "task 2 in list 1", "isDone": "new", "listID": "0", "listName": "First List" },
                //{ "id": "2", "text": "task 3 in list 1", "isDone": "new", "listID": "0", "listName": "First List" },

                ////Second list
                //{ "id": "0", "text": "task 1 in list 2", "isDone": "done", "listID": "1", "listName": "Second List" },
                //{ "id": "1", "text": "task 2 in list 2", "isDone": "done", "listID": "1", "listName": "Second List" },
                //{ "id": "2", "text": "task 3 in list 2", "isDone": "done", "listID": "1", "listName": "Second List" },
                //{ "id": "3", "text": "task 4 in list 2", "isDone": "done", "listID": "1", "listName": "Second List" },

            ];

            function chooseList(id, name) {
                var old = document.getElementById("card" + CurrentTodoID);
                if (old != undefined) {
                    old.style.display = "none";
                }
                var newd = document.getElementById("card" + id);
                if (newd != undefined) {
                    newd.style.display = "flex";
                }
                CurrentTodoID = id;
                CurrentListName = name.split("\n")[1];
            }

            function CreateLists() {
                var alreadyCreated = [];

                $.each(Tasks, function (index) {

                    if (alreadyCreated.indexOf(Tasks[index].listID) == -1) {
                        // CreateListHTML(Tasks[index].listID, Tasks[index].listName);
                        addSideList(Tasks[index].listID, Tasks[index].listName, false);
                        alreadyCreated.push(Tasks[index].listID);
                    }
                    addTask(Tasks[index].text, Tasks[index].isDone, Tasks[index].listID, Tasks[index].id, true, Tasks[index].listName, false);
                });
            }

            isFirst = true;
            function CreateListHTML(todoId, ListName, addDefaultTask) {
                var style = isFirst ? "" : "style = 'display: none'";
                if (isFirst) CurrentTodoID = todoId;
                var div = document.createElement("div");
                div.setAttribute("class", "card");
                if (!isFirst) div.setAttribute("style", "display: none");
                div.setAttribute("id", "card" + todoId);
                isFirst = false;
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
                
                div.innerHTML = html;
                document.getElementById("allListsIDParent").appendChild(div);

                if (addDefaultTask) addTask(DefaultTask.text, DefaultTask.isDone, todoId, DefaultTask.id, true, ListName, true);

                SetEvents();
            }

            function DeleteListHTML(todoId) {
                document.getElementById("card" + todoId).remove();
            }

            function addSideList(id, name, addDefaultTask) {
                if (id == undefined) id = generateID();
                if (name == undefined) name = "New List";
                if (addDefaultTask == undefined) addDefaultTask = true;
                var ul = document.getElementById("listOflists");
                var li = document.createElement("li");
                li.setAttribute("class", "item-lists");
                li.setAttribute("id", id);
                li.setAttribute("onclick", "chooseList(this.id,this.innerText)");
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
                CreateListHTML(id, name, addDefaultTask);
            }

   

            function RemoveList(listID, listName) {
                var indices = [];
                for (var i = 0; i < Tasks.length ; i++) {
                    if (Tasks[i].listID == listID) {
                        indices.push(i);
                    }
                }
                for (var i = indices.length - 1; i >= 0  ; i--) {
                    Tasks.splice(indices[i], 1);
                }
                DeleteListHTML(listID);
            }

            function addTask(text, status, todoID, id, noUpdate, listName, addToTasks) {
                var id = id ? id : generateID();
                if (addToTasks == undefined) addToTasks = true;
                var c = status == "done" ? "danger" : "";
                var item = '<li class="task_item ' + c + '" data-id="' + id + '" class="animated flipInX"><div class="checkbox my_checkbox"><span class="close"><i class="fa fa-times"></i></span><label><span class="checkbox-mask"></span><input type="checkbox" />' +
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

                $(".add-item")
                  .val("")
                  .attr("placeholder", "Add a task...");
                setTimeout(function () {
                    $(".todo-list li").removeClass("animated flipInX");
                }, 500);

                if (listName == undefined) {
                    listName = CurrentListName;
                }
                if (addToTasks) {
                    var thisTask =
                        {
                            "id": id,
                            "text": text,
                            "isDone": status,
                            "listID": todoID,
                            "listName": listName
                        };
                    Tasks.push(thisTask);
                }
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
                $(".add-list-name").on("focus", HideListName);
            }

            $(window).bind("beforeunload", function () {
                $(window).unbind("beforeunload");
                return confirm("Do you really want to close?")
            })
            //window.onbeforeunload = function (event) {
            //    $.ajax({
            //        type: 'POST',
            //        url: 'webservice.asmx/SaveTasks',
            //        dataType: 'json',
            //        data: { tasksArray: JSON.stringify(Tasks) },
            //        async: false
            //    });

            //};

            function HideListName(e) {
                e.currentTarget.value="";
            }

            function ChangeListName(e) {
                newName = e.currentTarget.value;
                $.each(Tasks, function (index) {
                    if (Tasks[index].listID == CurrentTodoID) {
                        Tasks[index].listName = newName;
                    }
                });
                // update side list
                document.getElementById(CurrentTodoID).childNodes[1].nodeValue = newName;
                CurrentListName = newName;
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

                setTimeout(function () {
                    li.removeClass("animated flipInX");
                }, 500);

                var taskId = $(this).parent().parent().parent()[0].attributes["data-id"].nodeValue;
                $.each(Tasks, function (index) {
                    if (Tasks[index].id == taskId) {
                        Tasks[index].isDone = Tasks[index].isDone == "new" ? "done" : "new";
                        return;
                    }
                });
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

            $(document).ready(function () {
                LoadTasks();
                var listPage = document.getElementById("listPage");
                var helpPage = document.getElementById("helpPage");
                var contactUsPage = document.getElementById("contactUsPage");
                pageArr = [listPage, helpPage, contactUsPage];
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

            //// Add a "checked" symbol when clicking on a list item
            //var list = document.querySelector('ul');
            //list.addEventListener('click', function (ev) {
            //    if (ev.target.tagName === 'LI') {
            //        ev.target.classList.toggle('checked');
            //    }
            //}, false);


            // function isnt activated 
            function Logout() {
                $.ajax({
                    url: "webservice.asmx/SaveTasks",
                    data: { tasksArray: JSON.stringify(Tasks) },
                    dataType: 'json',
                    type: 'POST',
                    success: function (res) {

                        window.location.replace("http://localhost:20200/Login.aspx");
                    },
                    error: function (er) {
                        if (er.status == 200)
                            window.location.replace("http://localhost:20200/Login.aspx");
                    }
                }).done();
            }

            function LoadTasks() {
                $.ajax({
                    url: "webservice.asmx/LoadTasks",
                    type: 'GET',
                    success: function (res) {
                        if (res.documentElement.innerHTML == "") {
                            var ListId = generateID();
                            Tasks = [{ "id": "0", "text": "Add new list", "isDone": "done", "listID": ListId, "listName": "First List" },
                                { "id": "0", "text": "Mark task as checked", "isDone": "new", "listID": ListId, "listName": "First List" }]
                        }
                        else Tasks = JSON.parse(res.documentElement.innerHTML);
                        CreateLists();
                    },
                    error: function (er) {
                        console.log(er);
                    }
                });
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
              "Wow, it's ",
              "Happy ",
              "Seems it's ",
              "Awesome, it's ",
              "Have a nice ",
              "Happy  ",
              "Enjoy your "
            );
            var randomWord = randomWordArray[Math.floor(Math.random() * randomWordArray.length)];

        </script>
</body>

</html>
