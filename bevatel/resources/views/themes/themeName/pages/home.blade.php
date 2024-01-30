@extends(setting('theme_path').'.layouts.app')

@section('body')
     @if (Route::has('login'))
        <div class="top-right links">
            @auth
                <a href="{{ url('/home') }}">Home</a>
            @else
                <a href="{{ route('login') }}">Login</a>
            @endauth
        </div>
     @endif
    <div class="content">
        <div style="width: 50%; display: block; margin-left: auto; margin-right: auto">
        </div>
        <div class="title">
            Theme name
        </div>
        <p>good theme</p>
    </div>
@endsection
