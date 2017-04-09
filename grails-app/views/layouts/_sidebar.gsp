<div id="sidebar">
    <div id="sidebar-content">

        <!-- Search Input -->
        <form class="sidebar-search">
            <div class="input-box">
                <button type="submit" class="submit">
                    <i class="icon-search"></i>
                </button>
                <span>
                    <input type="text" placeholder="Search...">
                </span>
            </div>
        </form>

        <!-- Search Results -->
        <div class="sidebar-search-results">

            <i class="icon-remove close"></i>
            <!-- Documents -->
            <div class="title">
                Documents
            </div>
            <ul class="notifications">
                <li>
                    <a href="javascript:void(0);">
                        <div class="col-left">
                            <span class="label label-info"><i class="icon-file-text"></i></span>
                        </div>
                        <div class="col-right with-margin">
                            <span class="message"><strong>John Doe</strong> received $1.527,32</span>
                            <span class="time">finances.xls</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <div class="col-left">
                            <span class="label label-success"><i class="icon-file-text"></i></span>
                        </div>
                        <div class="col-right with-margin">
                            <span class="message">My name is <strong>John Doe</strong> ...</span>
                            <span class="time">briefing.docx</span>
                        </div>
                    </a>
                </li>
            </ul>
            <!-- /Documents -->
            <!-- Persons -->
            <div class="title">
                Persons
            </div>
            <ul class="notifications">
                <li>
                    <a href="javascript:void(0);">
                        <div class="col-left">
                            <span class="label label-danger"><i class="icon-female"></i></span>
                        </div>
                        <div class="col-right with-margin">
                            <span class="message">Jane <strong>Doe</strong></span>
                            <span class="time">21 years old</span>
                        </div>
                    </a>
                </li>
            </ul>
        </div> <!-- /.sidebar-search-results -->

    <!--=== Navigation ===-->
        <ul id="nav">
            <li class="current">
                <a href="${createLink(controller: 'home')}">
                    <i class="icon-dashboard"></i>
                    ${session.user?.currentRegion?.name ?: 'Dashborad'}
                </a>
            </li>
            <li>
                %{--<g:remoteLink controller="room" action="index" update="content">abc</g:remoteLink>--}%
                <a href="${createLink(controller: 'room', action: 'index')}">
                    <i class="icon-th-large"></i>
                    Phòng cho thuê
                </a>
            </li>
            <li>
                <a href="${createLink(controller: 'renter', action: 'index')}">
                    <i class="icon-user"></i>
                    Khách thuê
                </a>
            </li>
            <li>
                <a href="${createLink(controller: 'region', action: 'list')}">
                    <i class=" icon-bar-chart"></i>
                    Khu quản lí
                </a>
            </li>
            <li>
                <a href="${createLink(controller: 'room', action: 'index')}">
                    <i class="icon-facetime-video"></i>
                    Camera
                </a>
            </li>
            <li class="${controllerName  == 'profile' ? 'open' :''}">
                <a href="javascript:void(0);">
                    <i class="icon-cog"></i>
                    Cài đặt
                    <i class="arrow icon-angle-down"></i></a>
                <ul class="sub-menu">
                    <li>
                        <a href="${createLink(controller: 'roomType', action: 'index')}">
                            <i class="icon-sitemap"></i>
                            Loại phòng
                        </a>
                    </li>
                    <li>
                        <a href="form_layouts.html">
                            <i class=" icon-credit-card"></i>
                            Tài khoản
                        </a>
                    </li>
                </ul>
            </li>

        </ul>

        <!-- /Navigation -->
        <div class="sidebar-title">
            <span>Notifications</span>
        </div>
        <ul class="notifications demo-slide-in"> <!-- .demo-slide-in is just for demonstration purposes. You can remove this. -->
            <li style="display: none;"> <!-- style-attr is here only for fading in this notification after a specific time. Remove this. -->
                <div class="col-left">
                    <span class="label label-danger"><i class="icon-warning-sign"></i></span>
                </div>
                <div class="col-right with-margin">
                    <span class="message">Server <strong>#512</strong> crashed.</span>
                    <span class="time">few seconds ago</span>
                </div>
            </li>
            <li style="display: none;"> <!-- style-attr is here only for fading in this notification after a specific time. Remove this. -->
                <div class="col-left">
                    <span class="label label-info"><i class="icon-envelope"></i></span>
                </div>
                <div class="col-right with-margin">
                    <span class="message"><strong>John</strong> sent you a message</span>
                    <span class="time">few second ago</span>
                </div>
            </li>
            <li>
                <div class="col-left">
                    <span class="label label-success"><i class="icon-plus"></i></span>
                </div>
                <div class="col-right with-margin">
                    <span class="message"><strong>Emma</strong>'s account was created</span>
                    <span class="time">4 hours ago</span>
                </div>
            </li>
        </ul>

        <div class="sidebar-widget align-center">
            <div class="btn-group" data-toggle="buttons" id="theme-switcher">
                <label class="btn active">
                    <input type="radio" name="theme-switcher" data-theme="bright"><i class="icon-sun"></i> Bright
                </label>
                <label class="btn">
                    <input type="radio" name="theme-switcher" data-theme="dark"><i class="icon-moon"></i> Dark
                </label>
            </div>
        </div>

    </div>
    <div id="divider" class="resizeable"></div>
</div>