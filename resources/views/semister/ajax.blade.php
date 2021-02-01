                         @ if(!empty($subject))
                          <option value="">Select One</option>
                            @foreach($all_semester as $value)
                            <option value="{{$value->id}}">{{$value->semister_name}}</option>
                           @endforeach
                           @endif