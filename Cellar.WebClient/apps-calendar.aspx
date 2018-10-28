﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="apps-calendar.aspx.cs" Inherits="Cellar.WebClient.apps_calendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- App favicon -->
    <link rel="shortcut icon" href="https://coderthemes.com/hyper/assets/images/favicon.ico">

    <!-- third party css -->
    <link href="Scripts/ScriptsExternal/fullcalendar.min.css" rel="stylesheet" />
    <!-- third party css end -->

    <!-- App css -->
    <link href="Scripts/ScriptsExternal/icons.min.css" rel="stylesheet" />
    <link href="Scripts/ScriptsExternal/app.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="javascript: void(0);">Hyper</a></li>
                        <li class="breadcrumb-item"><a href="javascript: void(0);">Apps</a></li>
                        <li class="breadcrumb-item active">Calendar</li>
                    </ol>
                </div>
                <h4 class="page-title">Calendar</h4>
            </div>
        </div>
    </div>
    <!-- end page title -->

    <div class="row">
        <div class="col-12">

            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-3">
                            <a href="#" data-toggle="modal" data-target="#add-category" class="btn btn-lg font-16 btn-primary btn-block  ">
                                <i class="mdi mdi-plus-circle-outline"></i>Create New Event
                            </a>
                            <div id="external-events" class="m-t-20">
                                <br>
                                <p class="text-muted">Drag and drop your event or click in the calendar</p>
                                <div class="external-event bg-success" data-class="bg-success">
                                    <i class="mdi mdi-checkbox-blank-circle mr-2 vertical-middle"></i>New Theme Release
                                </div>
                                <div class="external-event bg-info" data-class="bg-info">
                                    <i class="mdi mdi-checkbox-blank-circle mr-2 vertical-middle"></i>My Event
                                </div>
                                <div class="external-event bg-warning" data-class="bg-warning">
                                    <i class="mdi mdi-checkbox-blank-circle mr-2 vertical-middle"></i>Meet manager
                                </div>
                                <div class="external-event bg-danger" data-class="bg-danger">
                                    <i class="mdi mdi-checkbox-blank-circle mr-2 vertical-middle"></i>Create New theme
                                </div>
                            </div>

                            <!-- checkbox -->
                            <div class="custom-control custom-checkbox mt-3">
                                <input type="checkbox" class="custom-control-input" id="drop-remove">
                                <label class="custom-control-label" for="drop-remove">Remove after drop</label>
                            </div>

                            <div class="mt-5 d-none d-xl-block">
                                <h5 class="text-center">How It Works ?</h5>

                                <ul class="pl-3">
                                    <li class="text-muted mb-3">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
                                    </li>
                                    <li class="text-muted mb-3">Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage.
                                    </li>
                                    <li class="text-muted mb-3">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- end col-->

                        <div class="col-lg-9">
                            <div id="calendar"></div>
                        </div>
                        <!-- end col -->

                    </div>
                    <!-- end row -->
                </div>
                <!-- end card body-->
            </div>
            <!-- end card -->

            <!-- Add New Event MODAL -->
            <div class="modal fade" id="event-modal" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header pr-4 pl-4 border-bottom-0 d-block">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Add New Event</h4>
                        </div>
                        <div class="modal-body pt-3 pr-4 pl-4">
                        </div>
                        <div class="text-right pb-4 pr-4">
                            <button type="button" class="btn btn-light " data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-success save-event  ">Create event</button>
                            <button type="button" class="btn btn-danger delete-event  " data-dismiss="modal">Delete</button>
                        </div>
                    </div>
                    <!-- end modal-content-->
                </div>
                <!-- end modal dialog-->
            </div>
            <!-- end modal-->

            <!-- Modal Add Category -->
            <div class="modal fade" id="add-category" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header border-bottom-0 d-block">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Add a category</h4>
                        </div>
                        <div class="modal-body p-4">
                            <form>
                                <div class="form-group">
                                    <label class="control-label">Category Name</label>
                                    <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Choose Category Color</label>
                                    <select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">
                                        <option value="primary">Primary</option>
                                        <option value="success">Success</option>
                                        <option value="danger">Danger</option>
                                        <option value="info">Info</option>
                                        <option value="warning">Warning</option>
                                        <option value="dark">Dark</option>
                                    </select>
                                </div>

                            </form>

                            <div class="text-right">
                                <button type="button" class="btn btn-light " data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary ml-1   save-category" data-dismiss="modal">Save</button>
                            </div>

                        </div>
                        <!-- end modal-body-->
                    </div>
                    <!-- end modal-content-->
                </div>
                <!-- end modal dialog-->
            </div>
            <!-- end modal-->
        </div>
        <!-- end col-12 -->
    </div>
    <!-- end row -->

    <!-- bundle -->
    <script src="https://coderthemes.com/hyper/assets/js/app.min.js"></script>

    <!-- third party js -->
    <script src="https://coderthemes.com/hyper/assets/js/vendor/jquery-ui.min.js"></script>
    <script src="https://coderthemes.com/hyper/assets/js/vendor/fullcalendar.min.js"></script>
    <!-- third party js ends -->

    <!-- demo app -->
    <script src="https://coderthemes.com/hyper/assets/js/pages/demo.calendar.js"></script>
    <!-- end demo js-->
</asp:Content>
