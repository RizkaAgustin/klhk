<?php if(config('adminlte.layout_topnav') or (isset($item['topnav']) && $item['topnav'])): ?>
  <?php echo $__env->make('adminlte::partials.menu-item-top-nav', $item, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\klhk\vendor\jeroennoten\laravel-adminlte\src/../resources/views/partials/menu-item-top-nav-left.blade.php ENDPATH**/ ?>