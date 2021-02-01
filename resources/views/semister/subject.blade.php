@extends('layouts.admin')
@push('css')
<style type="text/css">
	.h1{
		background:#3c8dbc;
		height: 75px;
		color: white;
		padding: 15px;
		border-radius: 5px
	}
    .cls{


  }

</style>
@endpush
@section('content')
<h2 class="text-center h1"><span>1</span>  Semister All subject</h2>

<div class="row">
  @foreach($sub as $value)
        <div style="margin:20px "  class="col-lg-5 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
             <p> {{ $value->sub_name}}</p>
            </div>

            <a href="{{url('dashbord/content',$value->id)}}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        @endforeach

      </div>

@endsection