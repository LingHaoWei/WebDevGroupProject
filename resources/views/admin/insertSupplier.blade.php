@extends('layout')
@section('content')

<style>
</style>

<!--Page topic-->
<!--Page topic-->

<div class="content" id="pwrapper1">
  <div class="">
        <div class="pageTopic addPro"><h2>New Supplier</h2></div>
  </div>
  
  <div class="form addProForm row">
        <form method="POST" , action="{{ route('addSupplier') }}" enctype="multipart/form-data">
        @csrf

        <div class="form-group addProRow1">
            <label class="col-md-4 col-form-label text-md-right" for="supplierID">Supplier ID</label><span class="colorRed">*</span>
            <div class="col-md-2">
                <input type="text" class="form-control" id="SupplierID" name="SupplierID" style="background:transparent;" required>
            </div>
            <label class="col-md-4 col-form-label text-md-right" for="supplierName">Company Name</label><span class="colorRed">*</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="SupplierName" name="SupplierName" style=" background:transparent;" required>
            </div>
            <label class="col-md-4 col-form-label text-md-right" for="CompanyEmail">Company Email</label><span class="colorRed">*</span>
            <div class="col-md-4">
                <input type="email" class="form-control" id="CompanyEmail" name="CompanyEmail" style=" background:transparent;" required>
            </div>
        </div>

        <div class="form-group addProRow2">
            <label class="" for="contactPerson">Contact Person</label><span class="colorRed">*</span>
            <div class="">
                <input type="text" class="form-control" id="ContactPerson" name="ContactPerson" style=" background:transparent;" required>
            </div>
            <label class="" for="contactNumber">Contact Number</label><span class="colorRed">*</span>
            <div class="">
                <input type="text" class="form-control" id="ContactNumber" name="ContactNumber" style=" background:transparent;" required>
            </div> 
            <label class="" for="emailAddress">Contact Email</label><span class="colorRed">*</span>
            <div class="">
                <input type="email" class="form-control" id="EmailAddress" name="EmailAddress" style=" background:transparent;" required>
            </div>
        </div>
        <div class="form-group addProRow3">
            <label class="" for="supplierAddress">Address</label><span class="colorRed">*</span>
            <div class="">
                <textarea type="text" class="form-control" id="SupplierAddress" name="SupplierAddress" style=" background:transparent;" required></textarea>
            </div>
            <label class="" for="City">City</label><span class="colorRed">*</span>
            <div class="">
                <input type="text" class="form-control" id="City" name="City" style=" background:transparent;" required>
            </div>
            <label class="" for="State">State</label><span class="colorRed">*</span>
            <div class="">  
                <input type="text" class="form-control" id="State" name="State" style=" background:transparent;" required>
            </div>
            <label class="" for="ZipCode">Zip Code</label><span class="colorRed">*</span>
            <div class="">
                <input type="text" class="form-control" id="ZipCode" name="ZipCode" style=" background:transparent;" required>
            </div>
        </div>

        <div class="form-group addProRow4">
            <label class="col-md-4 col-form-label text-md-right" for="Supplier status">Status</label><span class="colorRed">*</span>
            <div class="col-md-3">
                <select name="status" class="form-control" required>
                    <option value="">---Select Status---</option>
                    <option value="Available">Available</option>
                    <option value="Unavailable">Unavailable</option>
                </select>
            </div>

            <button type="button" class="backBtn">
                <a href="{{ route('viewSupplier') }}" class="" title="Back" data-toggle="tooltip">Back</a>
            </button>
            <button type="submit" class="subBtn" title="Submit">Submit</button>
        </div>

        <div class="form-group addProRow5">

        </div>

        </form>
  </div>
</div>

@endsection