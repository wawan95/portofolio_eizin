    <div id="box-login" class="text-center span4">
        <?php
            echo Template::message();
                $site_open = $this->settings_lib->item('auth.allow_register');
                $this->load->helper('form');
        ?>
        <?php
            if (validation_errors()) :
        ?>
            <?php echo validation_errors(); ?>
        <?php endif; ?>
        <h1 class="text-danger">Login </h1>
        <?php echo form_open(LOGIN_URL, array('autocomplete' => 'off','role'=>'form', 'id' =>'login-form', 'name' =>'login-form')); ?>
        <!--<form role="form" id="login-form" name="login-form" method="post" action="">-->
          <!-- <label for="username">Nama Pengguna</label> -->
          <input type="text" name="login" class="form-control" id="login_value" placeholder="Masukkan nama pengguna" autofocus/>
          <!--<input type="text" name="login"  id="username" placeholder="Masukkan nama pengguna">-->
          <!-- <label for="password">Kata Sandi</label> -->
          <input type="password" class="form-control" name="password" id="password" placeholder="Masukkan kata sandi anda" />
          <!--<input type="password" name="password" id="password" placeholder="Masukkan kata sandi anda">-->

          <p>
              <input class="btn btn-success" type="submit" name="log-me-in" id="submit" value="MASUK" />
              <!--<button type="submit" class="btn btn-success">MASUK</button>-->
              <button type="reset" class="btn btn-default">RESET</button>
          </p>
          <?php echo form_close(); ?>
        <!--</form>-->
        <hr>
        <!--<p><?php echo anchor('/forgot_password', lang('us_forgot_your_password')); ?></p><hr>-->
        <p class="copyright">&copy;2015asd <a href="http:\\semarangkota.go.id" target="_blank">KKP Kota Semarang</a>.</p>
    </div> <!-- /#box-login --> 
                                