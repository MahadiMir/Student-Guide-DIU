@extends('layouts.admin')
@push('css')
<style type="text/css">
    h3{
        background:#3c8dbc;
        height: 75px;
        color: white;
        padding: 15px;
        border-radius: 5px
    }

</style>
@endpush
@section('content')
<h3 class="text-center">Update your profile</h3>

                 <div class="container">
                    <form method="POST" action="{{ route('profile.update',$user->id) }}">
                        @csrf

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('DIU E-Mail') }}</label>

                            <div class="col-md-6">
                                <input disabled id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ $user->email }}" placeholder="DIU E-Mail" required>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
               <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Student Type') }}</label>
                <div class="col-md-6" >

                        <select name="St_type"  class="form-control">
                            <option value="0">Select One</option>

                              <option  value="1"  <?php if ($user->st_type == 1) {echo 'selected';} else {}?>>Day</option>
                              <option  <?php if ($user->st_type == 2) {echo 'selected';} else {}?> value="2">Evening</option>


                        </select>

                   </div>  </div>
                   <div class="form-group row">
               <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Category') }}</label>
                <div class="col-md-6" >

                        <select name="category" class="form-control" required>
                            <option value="">Select One</option>
                            <?php
$st_type = DB::table('usrer_types')->where('id', '>', 1)->get();
foreach ($st_type as $value) {?>
                              <option {{ $user->category==$value->id ?'selected':' '}} value="{{$value->id}}">{{$value->name}}</option>
                            <?php }?>
                        </select>
                         @if ($errors->has('category'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('category') }}</strong>
                                    </span>
                                @endif
                   </div>  </div>



                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4 pull-right">
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
