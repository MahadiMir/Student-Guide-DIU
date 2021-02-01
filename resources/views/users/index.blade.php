@extends('layouts.admin')
@push('css')
 <link rel="stylesheet" type="text/css" href="{{asset('assets/css/style.css')}}">


@endpush
@section('content')
<section class="content">
      <div class="row">
        <div style="margin-left:50px" class="col-md-10 auto-mx">
          <div class="box">
            <div class="box-header with-border">
              <h4 class="text-center">Users table</h4>
            </div>

            <div class="box-body">
              <table class="table table-bordered">
                <tr>
                  <th>Sl. No</th>
                  <th>Email</th>
                  <th>Category</th>
                  <th >Type</th>
                   <th >action</th>
                </tr>
                <tr>
                  @foreach($user as $key=>$value)
                 <tr>
                  <td>{{$key +1}}</td>
                  <td>{{$value->email}}</td>
                  <td>{{$value->name}}</td>
                  <td >{{$value->name_cat}}</td>
                   <td ><a href="{{route('admin.delete',$value->id)}}" class="btn btn-success">delete</a></td>
                </tr>
                @endforeach

              </table>
            </div>

        </div>




    </section>


@endsection
