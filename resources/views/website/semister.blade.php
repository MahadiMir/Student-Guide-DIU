@extends('layouts.website')
@push('css')
<style type="text/css">
 .card-header{
     background: #000066;
     color: white;
   }
   .col-sm{
    width: 90%;
    height: 150px;
    background:red;
    margin: 7px;
    border-radius: 10px
   }
   .cls{
    width: 80%
   }
</style>
@endpush
@section('content')
<div class="head_div">
    dfd
</div>

<div class="container cls">
 <div class="row">
<div class="col-sm card text-white bg-info mb-3" >
      first
    </div>
    <div class="col-sm card text-white bg-dark mb-3">
     2
    </div>
    <div class="col-sm card text-white bg-success mb-3">
     3
    </div>
    <div class="col-sm card text-white bg-primary mb-3">
     4
    </div>
    <div class="col-sm card text-white bg-secondary mb-3">
     5
    </div>
    <div class="col-sm card text-white bg-dark mb-3">
    6
    </div>
 </div>
  <div class="row">
<div class="col-sm card text-white bg-info mb-3" >
      first
    </div>
    <div class="col-sm card text-white bg-dark mb-3">
     2
    </div>
    <div class="col-sm card text-white bg-success mb-3">
     3
    </div>
    <div class="col-sm card text-white bg-primary mb-3">
     4
    </div>
    <div class="col-sm card text-white bg-secondary mb-3">
     5
    </div>
    <div class="col-sm card text-white bg-dark mb-3">
    6
    </div>
 </div>
</div>

<div class="sub_footer">

</div>
@endsection
