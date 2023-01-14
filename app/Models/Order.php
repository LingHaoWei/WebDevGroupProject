<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable=['orderID','status','userID','paymentStatus','amount','address','contact','tracking_no'];

    public function user(){
        return $this->belongsTo('App\Models\User');
    }
    use HasFactory;
}
