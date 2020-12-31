@extends('layouts.app')
@section('title','Our Services')
@section('content')
    <section style="background-image: url('public/front/images/coverimage1.jpg'); width: 100%; height: 260px;" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row justify-content-center pb-3">
                <div class="col-md-8 text-center heading-section ftco-animate">
                    <h2 class="mb-4" style="line-height: 260px">Our <span>Services</span></h2>
                </div>
            </div>
        </div>
    </section>
<section class="ftco-section ftco-no-pt ftco-no-pb ftco-services-2 bg-light">
    <div class="container">
        <div class="row d-flex">
            <div class="py-lg-5">
                <div class="row">
                    <div class="col-md-12 col-lg-4 ftco-animate">
                        <div class="media block-6 services">
                            <a href="{{ route('all.doctors') }}"><div class="icon d-block align-items-center"><span class="flaticon-ophthalmologist"></span></div>
                                <div class="media-body">
                                <h3 class="heading mb-1">Doctor</a></h3>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. A small river named Duden flows by their place </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-4 ftco-animate">
                        <div class="media block-6 services">
                            <a href="{{ route('all.ambulances') }}"><div class="icon d-block align-items-center"><span class="flaticon-ambulance"></span></div>
                            <div class="media-body">
                                <h3 class="heading mb-1">Ambulance Service</a></h3>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. A small river named Duden flows by their place </p>
                            </div>
                        </div>      
                    </div>

                    <div class="col-md-12 col-lg-4 ftco-animate">
                        <div class="media block-6 services">
                            <a href="{{ route('all.diagnostics') }}"><div class="icon d-block align-items-center"><span class="flaticon-stethoscope"></span></div>
                            <div class="media-body">
                                <h3 class="heading mb-1">Diagnostic</a></h3>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. A small river named Duden flows by their place</p>
                            </div>
                        </div>      
                    </div>

                    <div class="col-md-12 col-lg-4 ftco-animate">
                        <div class="media block-6 services">
                            <a href="{{ route('all.socialorganizes') }}"><div class="icon d-block align-items-center"><span class="flaticon-flag"></span></div>
                            <div class="media-body">
                                <h3 class="heading mb-1">Social Organizes</a></h3>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. A small river named Duden flows by their place</p>
                            </div>
                        </div>      
                    </div>

                    <div class="col-md-12 col-lg-4 ftco-animate">
                        <div class="media block-6 services">
                            <a href="{{ route('all.shops') }}"><div class="icon d-block align-items-center"><span class="fa fa-shopping-cart"></span></div>
                            <div class="media-body">
                                <h3 class="heading mb-1">Our Shop</a></h3>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. A small river named Duden flows by their place</p>
                            </div>
                        </div>      
                    </div>
                    <div class="col-md-12 col-lg-4 ftco-animate">
                        <div class="media block-6 services">
                            <a href="{{ route('all.hospitals') }}"><div class="icon d-block align-items-center"><span class="fa fa-hospital-o"></span></div>
                            <div class="media-body">
                                <h3 class="heading mb-1">Hospital's</a></h3>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. A small river named Duden flows by their place</p>
                            </div>
                        </div> 
                    </div>

                    
                    <div class="col-md-12 col-lg-4 ftco-animate">
                        <div class="media block-6 services">
                            <a href="{{ route('all.corporateorganizes') }}"><div class="icon d-block align-items-center"><span class="fa fa-sitemap"></span></div>
                            <div class="media-body">
                                <h3 class="heading mb-1">Corporate Organization</a></h3>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. A small river named Duden flows by their place</p>
                            </div>
                        </div> 
                    </div>
                    
                    <div class="col-md-12 col-lg-4 ftco-animate">
                        <div class="media block-6 services">
                            <a target="_blank" href="https://facebook.com/onlinemediservice"><div class="icon d-block align-items-center"><span class="fa fa-medkit"></span></div>
                            <div class="media-body">
                                <h3 class="heading mb-1">Online Medi-Service</a></h3>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. A small river named Duden flows by their place</p>
                            </div>
                        </div> 
                    </div>
                    <div class="col-md-12 col-lg-4 ftco-animate">
                        <div class="media block-6 services">
                            <a target="_blank" href="https://www.facebook.com/groups/203117270470908"><div class="icon d-block align-items-center"><span class="fa fa-info"></span></div>
                            <div class="media-body">
                                <h3 class="heading mb-1">সিলেট ডাক্তারি সহায়তা</a></h3>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. A small river named Duden flows by their place</p>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection