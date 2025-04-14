<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->options('{any:.*}', function () {
    return response('', 204);
});


$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('/db-test', function () {
    return \DB::select('SHOW TABLES');
});

use App\Models\Student;

$router->get('/students', function () {
    return response()->json(
        Student::with('media')->orderBy('lname')->get()
    );
});

$router->get('/students/{id}', function ($id) {
    $student = Student::with('media')->find($id);

    if (!$student) {
        return response()->json([
            'message' => 'We dont have enough money for this amount of students, sorry'
        ], 404);
    }

    return response()->json($student);
});





