@extends('layouts.admin')
@push('css')
 <link rel="stylesheet" type="text/css" href="{{asset('assets/css/style.css')}}">
<style type="text/css">
 a{
    color:white;
 }
 a:hover{
    color:red;
 }
</style>
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
                   <th >File</th>
                   <th >action</th>
                </tr>
                <tr>
                  @foreach($file as $key=>$value)
                 <tr>
                  <td>{{$key +1}}</td>

                  <td >{{$value->file}}</td>

                  <td><a href="{{asset('uploads/file/'.$value->file)}}" name="" class="btn btn-success" download="{{$value->file}}">Download</a></td>
                </tr>
                @endforeach

              </table>
            </div>

        </div>

{{ $file->links() }}


@endsection
