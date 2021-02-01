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

     <?php

$asa = Session('subjects.id');

echo Auth::user()->email;
echo $sub_id;
echo Auth::user()->email;

?>
<div class="container">
<div class="row">
	<div class="col-md-5">
    <a href="{{ url('dashbord/st-image',$sub_id)}}" class="btn btn-info btn-large"> Questions</a>
     <a href="{{ url('dashbord/st-file',$sub_id)}}" class="btn btn-info btn-large"> Files</a>
      <a href="{{ url('dashbord/st-video',$sub_id)}}" class="btn btn-info btn-large"> Videos</a>
{{$a.'asad'}}
 </div>
 <div class="col-md-4">
{{$subject_name}}
<br>

@endsection
