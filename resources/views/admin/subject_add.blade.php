@extends('layouts.admin')
@push('css')
 <link rel="stylesheet" type="text/css" href="{{asset('assets/css/style.css')}}">
<style type="text/css">
 .
</style>
@endpush
@section('content')
<form class="well form-horizontal" action="{{url('dashbord/admin/subject/store1')}}"  method="post"  enctype="multipart/form-data">
    @csrf
        <fieldset>
            <legend><center><h2><b>Subject</b></h2></center></legend><br>

            <div class="form-group">
                <label class="col-md-4 control-label" for="dob">Semister</label>
                <div class="col-md-4 ">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-th-list"></i></span>
                        <select id="ddd" name="semester" id="gender" class="form-control">
                            <option value="">Select One</option>
                            @foreach($all_semester as $value)
                            <option value="{{$value->id}}">{{$value->semister_name}}</option>
                           @endforeach
                        </select>
                    </div>
                </div>
            </div>
<div class="form-group">
                <label class="col-md-4 control-label">Subject</label>
                <div class="col-md-4 ">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
                        <input  name="name" placeholder="Subject" class="form-control"  type="text">
                    </div>
                </div>
            </div>
                    <div class="form-group row">
                <label class="col-md-4 control-label">Type</label>
                <div class="col-md-4" >

                        <select name="St_type"  class="form-control">
                            <option value="">Select One</option>
                            <?php
$st_type = DB::table('student_types')->get();
foreach ($st_type as $value) {?>
                              <option value="{{$value->id}}">{{$value->name_cat}}</option>
                              <?php }?>

                        </select>
                         @if ($errors->has('St_type'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('St_type') }}</strong>
                                    </span>
                                @endif
                   </div>  </div>


            <div class="form-group">
                <label class="col-md-4 control-label" for="dob">Creadits</label>
                <div class="col-md-4 ">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-th-list"></i></span>
                        <select id="ddd" name="credit" id="gender" class="form-control">
                            <option value="">Select One</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label"></label>
                <div class="col-md-4"><br>
                    <button type="submit" name="submit" class="btn btn-warning btn-block btn-large">Upload</button>
                </div>
            </div>
          </form>
        </fieldset>


@endsection
