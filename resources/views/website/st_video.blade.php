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

<div class="container">
<div class="row">
	@foreach($video as  $value)
 <div class="col-md-3">
 <p class="text-center" style="width: 100% ;height:30px">{{$value->video_title}}</p>
         <iframe width=""style="width: 100%;margin: 0 auto;" height=""
              src="{{$value->video}}">
          </iframe>
 </div>

 @endforeach
</div>
</div>


@endsection
