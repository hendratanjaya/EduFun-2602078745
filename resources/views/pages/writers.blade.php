@extends("layout.main")

@section("content")

<div class="container" >

    <h2 class="my-5">Our Writers: </h2>
    <div class="row d-flex align-items-center" style="height: 50vh">
        @foreach ($writers as $writer)
            <div class="col ">
                <div class="card mx-auto" style="width: 18rem;">
                    <img src="/{{ $img }}" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                      <a href="/writers/id{{ $writer->id }}" class="link-secondary"><h5>{{ $writer->name }}</h5></a>
                      <p class="card-text">{{ $writer->speciality }}</p>
                    </div>
                  </div>
            </div>
            
        @endforeach
          
    </div>
</div>

@endsection