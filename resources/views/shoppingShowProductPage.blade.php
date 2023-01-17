@extends('shoppingPageLayout')
@section('content')

<!-- ================ category section start ================= -->
<section class="section-margin--small mb-5">
    <div class="container">
      <div class="row">
        <div class="col-xl-3 col-lg-4 col-md-5">
          <div class="sidebar-categories">
            <div class="head">Browse Categories</div>
            <ul class="main-categories">
              <li class="common-filter">
                @foreach($categoryID as $category)
                <form action="{{route('search.product')}}" method="POST" id="filter">
                @csrf
                  <ul>
                    <li class="filter-list">
                      <a href="{{ route('getCatProduct',['catid'=>$category->categoryID]) }}">{{$category->name}}</a>
                    </li>
                  </ul>
                </form>
                @endforeach
              </li>
            </ul>
          </div>
        </div>
        <div class="col-xl-9 col-lg-8 col-md-7">
          <!-- Start Filter Bar -->
          <div class="filter-bar d-flex flex-wrap align-items-center">
            <div class="sorting">
              <select onchange="window.location.href=this.options[this.selectedIndex].value;">
                <option value="1">--- Select Filter ---</option>
                <option value="{{ url('shoppingShowProductPage') }}">Default sorting</option>
                <option value="{{ url('priceLowToHigh') }}">Price low to high</option>
                <option value="{{ url('priceHighToLow') }}">Price high to low</option>
              </select>
            </div>
            <div class="sorting mr-auto">

            </div>
            <div>
            </form>
              <form class="input-group filter-bar-search" method="POST" action="{{route('search.product')}}">
              @csrf
                <input type="text" name="keyword" type="search" placeholder="Search Products" aria-label="Search">
                <div class="input-group-append">
                  <button type="submit"><i class="ti-search"></i></button>
                </div>
              </form>
            </div>
          </div>
          <!-- End Filter Bar -->
          <!-- Products -->
          <section class="lattest-product-area pb-40 category-list">
            <div class="row">
            @foreach($products as $product)
            @if($product->quantity == 0)
            <div></div>
            @else
              <div class="col-md-6 col-lg-4">
                <div class="card text-center card-product">
                  <div class="card-product__img">
                    <img class="card-img" src="{{asset('images/')}}/{{$product->image}}" alt="" Height="">
                  </div>
                  <div class="card-body">
                    <p>{{$product->catname}}</p>
                    <h4 class="card-product__title"><a href="{{ route('shoppingShowProductDetails',['id'=>$product->id]) }}">{{$product->name}}</a></h4>
                    <p class="card-product__price">RM {{$product->price}}</p>

                  </div>
                </div>
              </div>
              @endif
              @endforeach
            </div>
            <div class="paging">
            <span>{{$products->links()}}</span>
            </div>
          </section>


          <!-- Products -->
        </div>
      </div>
    </div>
  </section>
	<!-- ================ category section end ================= -->

@endsection
