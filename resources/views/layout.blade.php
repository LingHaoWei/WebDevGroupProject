<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title> </title>
    <link href="{{ url('/css/layout.css') }}" rel="stylesheet" />
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.debug.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js" ></script>
    
   </head>
<body>
  <div class="sidebar close">
    <div class="logo-details">
      <i class='bx bx-user'></i>
      <span class="logo_name">Admin</span>
    </div>
    <ul class="nav-links">

      <li>
        <div class="iocn-link">
          <a href="{{ route('viewProduct') }}">
            <i class='bx bx-package'></i>
            <span class="link_name">Product</span>
          </a>
          <i class='bx bxs-chevron-down arrow' ></i>
        </div>
        <ul class="sub-menu">
          <li><a class="link_name" href="{{ route('viewProduct') }}">Product</a></li>
          <li><a href="{{ route('viewBrand') }}">Brand</a></li>
          <li><a href="{{ route('viewCategory') }}">Category</a></li>
        </ul>
      </li>

      <li>
        <a href="{{ route('viewOrder') }}">
            <i class='bx bx-receipt'></i>
          <span class="link_name">Order</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="{{ route('viewOrder') }}">Order</a></li>
        </ul>
      </li>
      <li>
        <div class="iocn-link">
          <a href="{{ route('viewSupplier') }}">
            <i class='bx bx-list-plus'></i>
            <span class="link_name">Supplier</span>
          </a>
        </div>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="{{ route('viewSupplier') }}">Supplier</a></li>
        </ul>
      </li>
      <li>
    <div class="profile-details">
      <div class="profile-content">
      </div>
      <div class="name-job">
        <div class="profile_name">Logout</div>
      </div>
      <a href="{{ route('admin.logout') }}"><i class='bx bx-log-out'></i></a>
    </div>
  </li>
</ul>
  </div>
  <section class="home-section">

    <div class="home-content">

      <i class='bx bx-menu' ></i>

      <span class="text"></span>

    </div>
    @yield('content')

  </section>

</body>
</html>

<script>
    let arrow = document.querySelectorAll(".arrow");
    for (var i = 0; i < arrow.length; i++) {
    arrow[i].addEventListener("click", (e)=>{
    let arrowParent = e.target.parentElement.parentElement;//selecting main parent of arrow
    arrowParent.classList.toggle("showMenu");
    });
    }

    let sidebar = document.querySelector(".sidebar");
    let sidebarBtn = document.querySelector(".bx-menu");
    console.log(sidebarBtn);
    sidebarBtn.addEventListener("click", ()=>{
    sidebar.classList.toggle("close");
    });
</script>
