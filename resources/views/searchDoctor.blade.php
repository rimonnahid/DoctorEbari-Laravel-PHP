@extends('layouts.app')
@section('title','Search Results')
@section('content')

<section style="background-image: url('public/front/images/coverimage1.jpg'); width: 100%; height: 260px;" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row justify-content-center pb-3">
        <div class="col-md-10 text-center heading-section ftco-animate">
        <h2 style="line-height: 260px;">Search Result for </h2>
        </div>
      </div>
    </div>
  </section>
    @if(count($doctors) > 0)
        
    <section class="ftco-section bg-light" style="padding-top: 50px;">
        <div class="container-fluid">
          <div class="row justify-content-center pb-3">
            <div class="col-md-10 offset-1 text-center heading-section ftco-animate">
              <form action="{{ route('search.doctor')}}">
          <div class="row">
            <div class="col-md-2" style="padding:0px 5px;">
              <div class="form-group">
                <select class="form-control" name="division_id" id="">
                  <option value="">select division</option>
                  @foreach($divisions as $division)
                  <option value="{{ $division->id }}">{{ $division->division_name }}</option>
                  @endforeach
                </select>
              </div>
            </div>
            <div class="col-md-2" style="padding:0px 5px;">
              <div class="form-group">
                <select class="form-control" name="district_id" id="">
                  <option value="">select district</option>
                  @foreach($districts as $district)
                  @endforeach
                </select>
              </div>
            </div>
            <div class="col-md-2" style="padding:0px 5px;">
              <div class="form-group">
                <select class="form-control" name="upzila_id" id="">
                  <option value="">select upzilla</option>
                  @foreach($upzilas as $upzila)
                  @endforeach
                </select>
              </div>
            </div>

            <div class="col-md-2" style="padding:0px 5px;">
              <div class="form-group">
                <select class="form-control" name="department_id" id="">
                  <option value="">Select Department</option>
                  @foreach($departments as $department)
                  <option value="{{ $department->department_id }}">{{ $department->name }}</option>
                  @endforeach
                </select>
              </div>
            </div>

            <div class="col-md-2" style="padding:0px 5px;">
              <div class="form-group">
                <input type="submit" style="height: 50px; font-size: 22px;" value="Search" class="btn btn-success btn-block">
              </div>
            </div>
          </div>
            </form>
            </div>
          </div>
            <div class="row">
    @foreach($doctors as $doctor)
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="staff">
                        <div class="img-wrap d-flex align-items-stretch">
                            <div class="img align-self-stretch" style="background-image: url({{ asset('../storage/app/public/'.$doctor->image) }})"></div>
                        </div>
                        <div class="text text-center">
                            <a href="{{ route('doctor.details',$doctor->slug) }}"><h3 class="mb-2">{{ $doctor->name }}</h3>
                                <small style="color:black">{{ $doctor->sur_name }}</small>   
                            </a>
                            <span class="position mb-2">{{ $doctor->department->name }}</span>
                            <div class="faded">
                                <p>{!! Str::words( $doctor->description, '10','...') !!}</p>
                                <a href="{{ route('book_now',$doctor->slug) }}" class="btn btn-block btn-success" style="background: #3bc053;border-color: #3bc053;">Booking Now</a>
                                <a href="tel:{{ $doctor->hotline }}" class="btn btn-block btn-danger" style="background: #dc3545; border-color: #dc3545;">Call Now</a>
                            </div>
                        </div>
                    </div>
                </div>
    @endforeach
            </div>
            <div class="row justify-content-center">
                {{ $doctors->links() }}
            </div>
        </div>
    </section>
    @endif
@endsection

