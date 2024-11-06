@extends('layout.main')

@section('content')
        <div class="row mb-5">
            <div class="col-lg-12
            px-0" style="max-height: 550px">
                <img src="{{ $img }}" alt="study" style="width: 100%; height: 100%; object-fit: cover">
            </div>
        </div>
        @foreach ( $posts as $post)
            
            <div class="row justify-content-center">
                <div class="card mb-3" style="max-width: 85%;">
                    <div class="row g-0">
                    <div class="col-md-4">
                        <img src="/post-img/{{ $post->imgUrl }}" class="img-fluid rounded-start" alt="{{ $post->title }}">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                        <h5 class="card-title">{{ $post->title }}</h5>
                        By: <a href="/writers/id{{ $post->writer->id }}" class="link-secondary">{{ $post->writer->name }}</a> | {{ $post->created_at->format("j F Y") }}
                        <p class="card-text"> {{ Str::limit($post->body,500) }}</p>
                        <a href="/posts/post/{{ $post->slug }}" class="card-link">Read More &raquo;</a>
                        </div>
                    </div>
                    </div>
                </div>
                
            </div>
        @endforeach

    
    
@endsection