@extends('layout')
@section('content')
<style>
</style>

<!--Page topic-->
<!--Page topic-->

    <div id="pwrapper1">
        <div class="productRow1"> 
            <div class="">
                <div class="pageTopic"><h2>Supplier List</h2></div>
            </div>
            <div class="addProBtn">
                <div class="p-3">
                    <Button type="button" class="addButton">
                        <a href="{{ route('insertSupplier') }}" class="addProduct" title="New" data-toggle="tooltip"><i class="fa fa-plus"></i>&nbsp;&nbsp;&nbsp;Add Supplier</a>
                    </Button>
                </div>
            </div>
        </div>
        
        <div class="iq-search-bar device-search">
            <form method="POST" action="{{route('search.supplier')}}" class="searchbox">
            @csrf
                Search:<a class="search-link" href="#"><i class="ri-search-line"></i></a>
                <input type="text" name="keyword" type="search" placeholder="Search" aria-label="Search">
                <button type="submit"></button>
            </form>
        </div>
    </div>

    <div class="row" id="pwrapper2">
            <table class="table">
                <thead>
                    <tr>
                    <th></th>

                    <th>Company Name</th>
                    <th>Contact Person</th>
                    <th>Status</th>
                    <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($supplier as $suppliers)
                    <tr>
                    <td width="60"> 
                    </td>

                    <td>
                        <a href="{{ route('editSupplier',['id'=>$suppliers->id]) }}" style="color:black; text-decoration:none;">{{$suppliers->supplierName}}</a>
                    </td>
                    <td>{{$suppliers->contactPerson}}</td>
                    @if($suppliers->status == 'Available')
                    <td><span class="badge badge-success">{{$suppliers->status}}</span></td>
                    @elseif($suppliers->status == 'Unavailable')
                    <td><span class="badge badge-fail">{{$suppliers->status}}</span></td>
                    @endif
                    <td>
                        <Button type="button" class="editBtn">
                            <a href="{{ route('editSupplier',['id'=>$suppliers->id]) }}" class="editCategory fa fa-edit" title="Edit" data-toggle="tooltip"></a>
                        </Button>

                        <button type="button" class="deleteBtn">
                            <a href="{{ route('deleteSupplier',['id'=>$suppliers->id]) }}" class="deleteSupplier fa fa-trash-o" title="Delete" data-toggle="tooltip" onclick="return confirm('Are you sure?')"></a> 
                        </button>
                    </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
    </div>
    {{$supplier->links()}}

@endsection