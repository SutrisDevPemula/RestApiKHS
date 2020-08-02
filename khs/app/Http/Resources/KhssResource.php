<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\ResourceCollection;

class KhssResource extends ResourceCollection
{
    
    public function toArray($request)
    {
        return [
            "status" => "success",
            "message" => "khs data",
            "data" => parent::toArray($request)
        ];
    }
}
