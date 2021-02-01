@extends('layouts.website')
@push('css')
<style type="text/css">
 .card-header{
     background: #203864;
     color: white;
   }
</style>
@endpush
@section('content')
<div class="head_div">
    <h3 class="text-center" style="color: white;padding: 15px" >Dafodill International University</h3>
</div>
<div class="sub_head">
    @if(Session::has('err'))
  <div class="alert alert-danger alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;
      </span>
    </button>
    <strong>{{Session::get('err')}}
    </strong>
  </div>
  @endif
<h3 style="padding: 5px"> Registration form</h3>
</div>
<div class="container cls">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <img src="{{asset('assets/images/diu_logo.jpg')}}"class="rounded mx-auto d-block" style="width:15%;" >
                </div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('DIU E-Mail') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" placeholder="DIU E-Mail" required>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                            </div>
                        </div>
                        <div class="form-group row">
               <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Student Type') }}</label>
                <div class="col-md-6" >

                        <select id="student" name="St_type"  class="form-control">
                            <option value="0">Select One</option>

                              <option value="1">Day</option>
                              <option value="2">Evening</option>


                        </select>

                   </div>  </div>
                   <div class="form-group row">
               <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Category') }}</label>
                <div class="col-md-6" >

                        <select id="category" name="category" class="form-control" onclick="func(this.value)" required>
                            <option value="">Select One</option>
                            <option value="2"> Teacher</option>
                            <option value="3"> student</option>
                        </select>
                         @if ($errors->has('category'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('category') }}</strong>
                                    </span>
                                @endif
                   </div>  </div>



                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Register') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="sub_footer">

</div>
@endsection
<script type="text/javascript">
function func(x)
{
    var y=document.getElementById('category').value;
 if(y==2){
    document.getElementById("student").options[1].disabled = true;
    document.getElementById("student").options[2].disabled = true;
 }
 else{
    document.getElementById("student").options[1].disabled = false;
    document.getElementById("student").options[2].disabled = false;
 }
}

</script>