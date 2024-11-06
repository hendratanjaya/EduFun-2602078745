
<div class="col-12" style="height: 80px;">
    <nav class="navbar navbar-expand-lg navbar-light h-100" style="background-color: white">
        <div class="container-fluid">
          <a class="navbar-brand ms-5" href="/ ">EduFun</a>
          
          <div class="collapse navbar-collapse " id="navbarNav">
            <ul class="navbar-nav ms-auto me-5">
              <li class="nav-item me-3 ms-3">
                <a class="nav-link {{ ($title === "Home")? 'active' : '' }}"href="/">Home</a>
              </li>
              <li class="nav-item dropdown me-3 ms-3">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Category
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                  <li><a class="dropdown-item" href="/posts/Data Science">Data Science</a></li>
                  <li><a class="dropdown-item" href="/posts/Network Security">Network Security</a></li>
                  
                </ul>
              </li>
              <li class="nav-item me-3 ms-3">
                <a class="nav-link {{ ($title === "Writers")? 'active' : '' }}" href="/writers">Writers</a>
              </li>
              <li class="nav-item me-3 ms-3">
                <a class="nav-link  {{ ($title === "About Us")? 'active' : '' }}" href="/about-us">About Us</a>
              </li>
              <li class="nav-item me-3 ms-3">
                <a class="nav-link {{ ($title === "Popular")? 'active' : '' }}" href="/popular">Popular</a>
              </li>
              
            </ul>
          </div>
        </div>
    </nav>
</div>
