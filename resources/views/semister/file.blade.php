@extends('layouts.admin')
@push('css')
 <link rel="stylesheet" type="text/css" href="{{asset('assets/css/style.css')}}">
<style type="text/css">
 .
</style>
@endpush
@section('content')
@if (count($errors)>0)
     @foreach ($errors->all() as $error)
       <p class="alert alert-danger"> {{ $error }} </p>
     @endforeach
   @endif

<form class="well form-horizontal" action="{{route('dashbord.file')}}"  id="register-form" method="post" enctype="multipart/form-data">
    @csrf
        <fieldset>
            <legend><center><h2><b>File Upload</b></h2></center></legend><br>

            <div class="form-group">
                <label class="col-md-4 control-label" for="dob">Semister</label>
                <div class="col-md-4 ">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-check"></i></span>
                        <select id="semister" name="semister" class="form-control" required>
                             <option value="">Select One</option>
                            @foreach($all_semester as $value)
                            <option value="{{$value->id}}">{{$value->semister_name}}</option>
                           @endforeach
                        </select>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="dob">Subject</label>
                <div class="col-md-4 ">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-check"></i></span>
                        <select id="subject" name="subject" class="form-control" required>

                        </select>
                    </div>
                </div>
            </div>
             <div class="form-group">
                <label class="col-md-4 control-label" for="dob">Student Type</label>
                <div class="col-md-4 ">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-check"></i></span>
                        <select id="ddd" name="st_type" id="gender" class="form-control" required>
                            <option value="">Select One</option>
                            @foreach($st_type as $value)
                            <option value="{{$value->id}}">{{$value->name_cat}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
                <div class="form-group">
               <label class="col-md-4 control-label" for="dob">Q/file</label>
                <div class="col-md-4 ">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-check"></i></span>
                        <select id="select" name="st_type" id="gender" class="form-control" onclick="func(this.value)" required>
                            <option value="">Select One</option>
                             <option value="1">File</option>
                            <option value="2">Question</option>


                        </select>
                    </div>
                </div>
            </div>
             <div id="file" style="display:none" class="form-group">
                <label class="col-md-4 control-label" for="dob">File</label>
                <div class="col-md-4 ">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-check"></i></span>
                        <input type="file" name="file">
                    </div>
                </div>
            </div>
            <div id="image"style="display:none" class="form-group">
                <label class="col-md-4 control-label" for="dob">Image</label>
                <div class="col-md-4 ">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-check"></i></span>
                        <input type="file" name="image" >
                    </div>
                </div>
            </div>


            <div class="form-group">
                <label class="col-md-4 control-label"></label>
                <div class="col-md-4"><br>
                    <button type="submit" name="submit" class="btn btn-warning btn-block btn-large">Upload</button>
                </div>
            </div>

        </fieldset>
    </form>
<form class="well form-horizontal" action="{{route('dashbord.video')}}" name="register-form" id="register-form" method="post" role="form" enctype="multipart/form-data">
    @csrf
        <fieldset>
            <legend><center><h2><b>Video Upload</b></h2></center></legend><br>

            <div class="form-group">
                <label class="col-md-4 control-label" for="dob">Semister</label>
                <div class="col-md-4 ">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-check"></i></span>
                        <select id="semister2" name="semister"  class="form-control" required>
                            <option value="">Select One</option>
                            @foreach($all_semester as $value)
                            <option value="{{$value->id}}">{{$value->semister_name}}</option>
                           @endforeach
                        </select>
                    </div>
                </div>
            </div>

             <div class="form-group">
                <label class="col-md-4 control-label" for="dob">Subject</label>
                <div class="col-md-4 ">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-check"></i></span>
                        <select  name="subject" id="subject2" class="form-control"  required>


                        </select>
                    </div>
                </div>
            </div>
             <div class="form-group">
                <label class="col-md-4 control-label" for="dob">Student Type</label>
                <div class="col-md-4 ">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-check"></i></span>
                        <select id="ddd" name="st_type" id="gender" class="form-control" required>
                            <option value="">Select One</option>
                            @foreach($st_type as $value)
                            <option value="{{$value->id}}">{{$value->name_cat}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label">Video Title</label>
                <div class="col-md-4 ">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-check"></i></span>
                        <input  name="video_title" placeholder="Video Title" class="form-control"  type="text" required>
                    </div>
                </div>
            </div>
              <div class="form-group">
                <label class="col-md-4 control-label">Video</label>
                <div class="col-md-4 ">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-check"></i></span>
                        <input  name="video" placeholder="Video Link" class="form-control"  type="text" required>
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
<script type="text/javascript">
    function func(z){
        var y = document.getElementById('select').value;
 if(y==1){
    document.getElementById('image').style.display='none';
    document.getElementById('file').style.display='block';

 }
 else if(y==2){
    document.getElementById('file').style.display='none';
    document.getElementById('image').style.display='block';
    }
    else
    {
        document.getElementById('file').style.display='none';
    document.getElementById('image').style.display='none';
            }
    }

</script>
<script type="text/javascript">
       $(document).ready(function(){
       $('#semister').change(function(){
     var a=$(this).val();
     console.log(a);
     $.get('/ajax-semister-data?a='+a,function(data){
        console.log(data);
        $('#subject').empty();
        $.each(data,function(i,subject){
            $('#subject').append('<option value="'+subject.id+'">'+subject.sub_name+'</option>');
        });


     });


    });
   });
    </script>
    <script type="text/javascript">
       $(document).ready(function(){
       $('#semister2').change(function(){
     var a=$(this).val();
     console.log(a);
     $.get('/ajax-semister-data?a='+a,function(data){
        console.log(data);
        $('#subject2').empty();
        $.each(data,function(i,subject){
            $('#subject2').append('<option value="'+subject.id+'">'+subject.sub_name+'</option>');
        });


     });


    });
   });
    </script>

@endsection
