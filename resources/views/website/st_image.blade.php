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

                   <th >Image</th>
                   <th >action</th>
                </tr>
                <tr>
                  @foreach($image as $key=>$value)
                 <tr>
                  <td>{{$key +1}}</td>

                  <td  style="width:150px;height: 100px" ><img src="{{asset('uploads/image/'.$value->image)}}" width="60%"></td>
                   <td>
                  <a href="{{asset('uploads/image/'.$value->image)}}" name="" class="btn btn-success" download="{{$value->image}}">Download</a></td>
                </tr>
                @endforeach

              </table>
            </div>

        </div>

{{ $image->links() }}


    </section>


@endsection
