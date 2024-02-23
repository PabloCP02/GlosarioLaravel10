<main>
<!-- Barra de navegacion -->
<div class="row mx-0">
        <!-- Barra de navegación lateral -->
        <nav class=" nav flex-column col-3 ps-5 pt-2 pb-5">
            <ul>
                <li><a class="nav-link" aria-current="page" href="{{ url('terminos') }}"><i class="fa-solid fa-house"></i> Inicio</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fa-solid fa-bars"></i> Términos
                    </a>
                    <ul class="dropdown-menu">
                        @foreach($terminos as $termino)
                            <a href="{{ url('terminos/'. $termino->id ) }}" class="dropdown-item">{{ $termino->concepto }}</a>
                        @endforeach
                    </ul>
                </li>
                <li><a class="nav-link" href="{{ url('/terminos/acercaDe' ) }}"><i class="fa-solid fa-circle-info"></i> Acerca de</a></li>
            </ul>
        </nav>
