<?php

namespace App\View\Components;

use App\Model\Eselon;
use Illuminate\View\Component;

class Select extends Component
{
    public $label, $name, $selectData, $value;
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($label, $name, $selectData, $value = null)
    {
        $model = 'App\Model\\' . $selectData;

        $this->label        = $label;
        $this->name         = $name;
        $this->selectData   = $model::all();
        $this->value        = $value;
    }

    public function isSelected($value)
    {
        return $value === $this->value;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.select');
    }
}
