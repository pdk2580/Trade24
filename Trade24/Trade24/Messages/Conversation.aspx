<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Conversation.aspx.cs" Inherits="Trade24.Messages.Conversation" %>

<%@ Import Namespace="Trade24.BO" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trade24</title>
    <link href="/Assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/Assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/Assets/css/owl.carousel.css" rel="stylesheet" />
    <link href="/Assets/css/style.css" rel="stylesheet" />
    <style>
        .conversation-wrap {
            box-shadow: -2px 0 3px #ddd;
            padding: 0;
            max-height: 400px;
            overflow: auto;
        }

        .conversation {
            padding: 5px;
            border-bottom: 1px solid #ddd;
            margin: 0;
        }

        .message-wrap {
            box-shadow: 0 0 3px #ddd;
            padding: 0;
        }

        .msg {
            padding: 5px;
            /*border-bottom:1px solid #ddd;*/
            margin: 0;
        }

        .msg-wrap {
            padding: 10px;
            max-height: 400px;
            overflow: auto;
        }

        .time {
            color: #bfbfbf;
        }

        .send-wrap {
            border-top: 1px solid #eee;
            border-bottom: 1px solid #eee;
            padding: 10px;
            /*background: #f8f8f8;*/
        }

        .send-message {
            resize: none;
        }

        .highlight {
            background-color: #f7f7f9;
            border: 1px solid #e1e1e8;
        }

        .send-message-btn {
            border-top-left-radius: 0;
            border-top-right-radius: 0;
            border-bottom-left-radius: 0;
            border-bottom-right-radius: 0;
        }

        .btn-panel {
            background: #f7f7f9;
        }

            .btn-panel .btn {
                color: #b8b8b8;
                transition: 0.2s all ease-in-out;
            }

                .btn-panel .btn:hover {
                    color: #666;
                    background: #f8f8f8;
                }

                .btn-panel .btn:active {
                    background: #f8f8f8;
                    box-shadow: 0 0 1px #ddd;
                }

        .btn-panel-conversation .btn, .btn-panel-msg .btn {
            background: #f8f8f8;
        }

            .btn-panel-conversation .btn:first-child {
                border-right: 1px solid #ddd;
            }

        .msg-wrap .media-heading {
            color: #003bb3;
            font-weight: 700;
        }


        .msg-date {
            background: none;
            text-align: center;
            color: #aaa;
            border: none;
            box-shadow: none;
            border-bottom: 1px solid #ddd;
        }


        body::-webkit-scrollbar {
            width: 12px;
        }


        /* Let's get this party started */
        ::-webkit-scrollbar {
            width: 6px;
        }

        /* Track */
        ::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
            /* -webkit-border-radius: 10px;
border-radius: 10px;*/
        }

        /* Handle */
        ::-webkit-scrollbar-thumb {
            /* -webkit-border-radius: 10px;
border-radius: 10px;*/
            background: #ddd;
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5);
        }

            ::-webkit-scrollbar-thumb:window-inactive {
                background: #ddd;
            }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <nav class="navbar navbar-default navbar-static-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="\Default.aspx">Trade24</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#contact">Contact</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Nav header</li>
                                    <li><a href="#">Separated link</a></li>
                                    <li><a href="#">One more separated link</a></li>
                                </ul>
                            </li>
                        </ul>
                        <div class="navbar-form navbar-left" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Search">
                            </div>
                            <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
                        </div>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Users\Login.aspx">Login</a></li>
                            <li><a href="Users\Register.aspx">Register</a></li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </nav>
            <div class="container main content">
                <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="btn-panel btn-panel-conversation">
                                <a href="" class="btn col-lg-6 send-message-btn " role="button"><i class="fa fa-search"></i>Search</a>
                                <a href="" class="btn col-lg-6 send-message-btn pull-right" role="button"><i class="fa fa-plus"></i>New Message</a>
                            </div>
                        </div>
                        <div class="col-lg-offset-1 col-lg-7">
                            <div class="btn-panel btn-panel-msg">
                                <a href="" class="btn col-lg-3 send-message-btn pull-right" role="button"><i class="fa fa-gears"></i>Settings</a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="conversation-wrap col-lg-3">
                            <div class="media conversation">
                                <a href="~/Messages/Conversation.aspx?id=1">
                                    <a class="pull-left" href="#">
                                        <img class="media-object" data-src="holder.js/64x64" alt="64x64" style="width: 50px; height: 50px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAACqUlEQVR4Xu2Y60tiURTFl48STFJMwkQjUTDtixq+Av93P6iBJFTgg1JL8QWBGT4QfDX7gDIyNE3nEBO6D0Rh9+5z9rprr19dTa/XW2KHl4YFYAfwCHAG7HAGgkOQKcAUYAowBZgCO6wAY5AxyBhkDDIGdxgC/M8QY5AxyBhkDDIGGYM7rIAyBgeDAYrFIkajEYxGIwKBAA4PDzckpd+322243W54PJ5P5f6Omh9tqiTAfD5HNpuFVqvFyckJms0m9vf3EY/H1/u9vb0hn89jsVj8kwDfUfNviisJ8PLygru7O4TDYVgsFtDh9Xo9NBrNes9cLgeTybThgKenJ1SrVXGf1WoVDup2u4jFYhiPx1I1P7XVBxcoCVCr1UBfTqcTrVYLe3t7OD8/x/HxsdiOPqNGo9Eo0un02gHkBhJmuVzC7/fj5uYGXq8XZ2dnop5Mzf8iwMPDAxqNBmw2GxwOBx4fHzGdTpFMJkVzNB7UGAmSSqU2RoDmnETQ6XQiOyKRiHCOSk0ZEZQcUKlU8Pz8LA5vNptRr9eFCJQBFHq//szG5eWlGA1ywOnpqQhBapoWPfl+vw+fzweXyyU+U635VRGUBOh0OigUCggGg8IFK/teXV3h/v4ew+Hwj/OQU4gUq/w4ODgQrkkkEmKEVGp+tXm6XkkAOngmk4HBYBAjQA6gEKRmyOL05GnR99vbW9jtdjEGdP319bUIR8oA+pnG5OLiQoghU5OElFlKAtCGr6+vKJfLmEwm64aosd/XbDbbyIBSqSSeNKU+HXzlnFAohKOjI6maMs0rO0B20590n7IDflIzMmdhAfiNEL8R4jdC/EZIJj235R6mAFOAKcAUYApsS6LL9MEUYAowBZgCTAGZ9NyWe5gCTAGmAFOAKbAtiS7TB1Ng1ynwDkxRe58vH3FfAAAAAElFTkSuQmCC">
                                    </a>
                                    <div class="media-body">
                                        <h5 class="media-heading">Naimish Sakhpara</h5>
                                        <small>Hello</small>
                                    </div>
                                </a>
                            </div>
                        </div>

                        <div class="message-wrap col-lg-8">
                            <div class="msg-wrap">
                                <!--<div class="alert alert-info msg-date"><strong>Today</strong></div>-->
                                <asp:Repeater ID="rptMessage" runat="server">
                                    <ItemTemplate>
                                        <div class="media msg">
                                            <a class="pull-left" href="#">
                                                <img class="media-object" data-src="holder.js/64x64" alt="64x64" style="width: 32px; height: 32px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAACqUlEQVR4Xu2Y60tiURTFl48STFJMwkQjUTDtixq+Av93P6iBJFTgg1JL8QWBGT4QfDX7gDIyNE3nEBO6D0Rh9+5z9rprr19dTa/XW2KHl4YFYAfwCHAG7HAGgkOQKcAUYAowBZgCO6wAY5AxyBhkDDIGdxgC/M8QY5AxyBhkDDIGGYM7rIAyBgeDAYrFIkajEYxGIwKBAA4PDzckpd+322243W54PJ5P5f6Omh9tqiTAfD5HNpuFVqvFyckJms0m9vf3EY/H1/u9vb0hn89jsVj8kwDfUfNviisJ8PLygru7O4TDYVgsFtDh9Xo9NBrNes9cLgeTybThgKenJ1SrVXGf1WoVDup2u4jFYhiPx1I1P7XVBxcoCVCr1UBfTqcTrVYLe3t7OD8/x/HxsdiOPqNGo9Eo0un02gHkBhJmuVzC7/fj5uYGXq8XZ2dnop5Mzf8iwMPDAxqNBmw2GxwOBx4fHzGdTpFMJkVzNB7UGAmSSqU2RoDmnETQ6XQiOyKRiHCOSk0ZEZQcUKlU8Pz8LA5vNptRr9eFCJQBFHq//szG5eWlGA1ywOnpqQhBapoWPfl+vw+fzweXyyU+U635VRGUBOh0OigUCggGg8IFK/teXV3h/v4ew+Hwj/OQU4gUq/w4ODgQrkkkEmKEVGp+tXm6XkkAOngmk4HBYBAjQA6gEKRmyOL05GnR99vbW9jtdjEGdP319bUIR8oA+pnG5OLiQoghU5OElFlKAtCGr6+vKJfLmEwm64aosd/XbDbbyIBSqSSeNKU+HXzlnFAohKOjI6maMs0rO0B20590n7IDflIzMmdhAfiNEL8R4jdC/EZIJj235R6mAFOAKcAUYApsS6LL9MEUYAowBZgCTAGZ9NyWe5gCTAGmAFOAKbAtiS7TB1Ng1ynwDkxRe58vH3FfAAAAAElFTkSuQmCC">
                                            </a>
                                            <div class="media-body">
                                                <small class="pull-right time"><i class="fa fa-clock-o"></i><%# ((MessageBO)Container.DataItem).Created_at.ToString() %></small>
                                                <h5 class="media-heading"><%# ((MessageBO)Container.DataItem).SenderName %></h5>
                                                <small class="col-lg-10"><%# ((MessageBO)Container.DataItem).Content %></small>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                            </div>

                            <div class="send-wrap ">
                                <asp:TextBox ID="txtBox" rows="3" class="form-control send-message" runat="server" TextMode="MultiLine" placeholder="Write a reply..."></asp:TextBox>
                            </div>
                            <div class="btn-panel">
                                <asp:Button ID="btnSend" runat="server" class=" col-lg-4 text-right btn send-message-btn pull-right" Text="Send Message" OnClick="btnSend_Click" />
                                <a href="" class=" col-lg-3 btn send-message-btn " role="button"><i class="fa fa-cloud-upload"></i>Add Files</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container footer">
                <hr />
                &copy; Trade24 | <a href="">Feedback</a> | <a href="">Business Relation</a> | <a href="">About Us</a>
            </div>
        </div>
    </form>
</body>
<script src="/Assets/js/jquery-1.11.1.min.js"></script>
<script src="/Assets/js/jquery-migrate-1.2.1.min.js"></script>
<script src="/Assets/js/bootstrap.min.js"></script>
<script src="/Assets/js/bootstrap-hover-dropdown.min.js"></script>
<script src="/Assets/js/jquery.magnific-popup.min.js"></script>
<script src="/Assets/js/owl.carousel.min.js"></script>
<script src="/Assets/js/custom.js"></script>
</html>
