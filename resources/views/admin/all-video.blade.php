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
                  <th>Subject</th>
                  <th>Semister</th>
                  <th >Student Type</th>
                   <th >Video</th>
                   <th >Video Title</th>
                   <th >action</th>
                </tr>
                <tr>
                  @foreach($allVideo as $key=>$value)
                 <tr>
                  <td>{{$key +1}}</td>
                  <td>{{$value->sub_name}}</td>
                  <td>{{$value->semister_name}}</td>
                  <td >{{$value->name_cat}}</td>
                  <td >{{$value->video_title}}</td>
                  <td >{{$value->video}}</td>
                   <td ><a href="{{route('admin.videoDelete',$value->id)}}" class="btn btn-warning">delete</a>
                  </td>
                </tr>
                @endforeach

              </table>
            </div>

        </div>

{{ $allVideo->links() }}


    </section>


@endsection
