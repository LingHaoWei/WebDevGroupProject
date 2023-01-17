@extends('shoppingPageLayout')
@section('content')

<style>
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
      -webkit-appearance: none;
      margin: 0;
    }

    input[type=number] {
      -moz-appearance: textfield;
    }
    </style>
  <!--================Single Product Area =================-->
  @if (count($errors) > 0)
  <div class="alert alert-danger">
      Product already exists in cart
  </div>
@endif
  <div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">

			@foreach($products as $product)

			<input type="hidden" class="form-control" id="id" name="id" value="{{$product->id}}">

				<div class="col-lg-6">
					<div class="owl-carousel owl-theme s_Product_carousel">
						<div class="single-prd-item">
							<img class="img-fluid" src="{{asset('images/')}}/{{$product->image}}" alt="">
						</div>
					</div>
				</div>
				<div class="col-lg-5 offset-lg-1">
                    <form action="{{route('addCart')}}" method="post">
                    @csrf
					<div class="s_product_text">
						<h3>{{$product->name}}</h3>
						<h2>RM {{$product->price}}</h2>
						<ul class="list">
							<li><a class="active" href="#"><span>Product ID</span> : {{$product->productSKU}}</a></li>
							<li><a href="#"><span>Availibility</span> : {{$product->quantity}} (In Stock)</a></li>
						</ul>
						<br>
						<div class="product_count">
              <label for="qty">Quantity:</label>
              <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
							 class="increase items-count" type="button"><i class="ti-angle-left"></i></button>
							<input type="number" name="quantity" id="sst" size="2" maxlength="12" value="1" title="Quantity:" class="input-text qty" max="{{ $product->quantity }}" min="1">
							<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
               class="reduced items-count" type="button"><i class="ti-angle-right"></i></button>

						</div><br>
                        <input type="hidden" class="form-control" id="productID" name="productID" value="{{$product->productID}}">
                        <input type="hidden" class="form-control" id="productCartID" name="productCartID" value="{{$product->productID}}-{{ $uid }}">
                        <button type="submit" class="button button--active button-review">Add to cart</button>
						<div class="card_area d-flex align-items-center">
						</div>
					</div>
			</form>
        	</div>

			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->

	<!--================Product Description Area =================-->
	<section class="product_description_area">
		<div class="container">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Description</a>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
					<p>{{$product->description}}</p>
					<p></p>
				</div>
				  @endforeach
			</div>
		</div>
	</section>
	<!--================End Product Description Area =================-->


@endsection
