@extends('layouts.app')
@section('title','Ambulance Services')
@section('content')
    <section style="background-image: url('public/front/images/coverimage1.jpg'); width: 100%; height: 260px;" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row justify-content-center pb-3">
                <div class="col-md-8 text-center heading-section ftco-animate">
                    <h2 class="mb-4" style="line-height: 260px">Our <span>Ambulance Service</span></h2>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section bg-light" style="padding-top: 50px;">
        <div class="container-fluid"> 
           {{--  <div class="row justify-content-center pb-3">
                <div class="col-md-8 text-center heading-section ftco-animate">
                    <h2 class="mb-4">Our <span>Ambulance Service</span></h2>
                </div>
            </div>  --}} 

            <div class="row">
                @foreach($ambulances as $ambulance)
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="staff">
                        <div class="img-wrap d-flex align-items-stretch">
                            <div class="img align-self-stretch" style="background-image: url({{ asset('../storage/app/public/'.$ambulance->image) }}); width: 100%; border: 0px; border-radius: 0;"></div>
                        </div>
                        <div class="text text-center">
                            <a href="{{ route('ambulance.details',$ambulance->slug) }}"><h3 class="mb-2">{{ $ambulance->name }}</h3></a>
                            <span class="position mb-2">{{ $ambulance->phone }}</span>
                            <div class="faded">
                                <p>{!! $ambulance->address !!}</p>
                                <a href="tel:{{ $ambulance->phone }}" class="btn btn-block btn-danger" style="background: #dc3545; border-color: #dc3545;">Call Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="row justify-content-center">
                {{ $ambulances->links() }}
            </div>
        </div>
    </section>
@endsection