<div class="sidebar">
	<ul class="widget widget-menu unstyled">
		<li>
			<a href="<?php echo base_url()?>user/home">
				<i class="menu-icon icon-dashboard"></i>
				Dashboard
			</a>
		<li>
			<a class="collapsed" data-toggle="collapse" href="#togglePages">
			<i class="menu-icon icon-cog"></i>
			<i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right"></i>
			Rekap Kehadiran
			</a>
			<ul id="togglePages" class="collapse unstyled">
				<li>
					<a href="<?php echo base_url()?>attendance/perkuliahan">
					<i class="icon-inbox"></i>
					Kehadiran Perkuliahan
					</a>
				</li>
				<li>
					<a href="<?php echo base_url()?>attendance/pengajar">
					<i class="icon-inbox"></i>
					Kehadiran Pengajar
					</a>
				</li>
				<li>
					<a href="<?php echo base_url()?>attendance/mahasiswa">
					<i class="icon-inbox"></i>
						Kehadiran Mahasiswa
					</a>
				</li>
			</ul>
		</li>
		<li>
			<a href="<?php echo base_url()?>user/dosen">
				<i class="menu-icon icon-table"></i>
				Master Dosen
			</a>
		</li>
		<li>
			<a href="<?php echo base_url()?>user/mahasiswa">
				<i class="menu-icon icon-table"></i>
				Master Mahasiswa
			</a>
		</li>
		<li>
			<a href="<?php echo base_url()?>user/ruangan">
				<i class="menu-icon icon-table"></i>
				Master Ruangan
			</a>
		</li>
		<li>
			<a href="<?php echo base_url()?>user/reader">
				<i class="menu-icon icon-table"></i>
				RFID Reader
			</a>
		</li>
		<li>
			<a href="<?php echo base_url()?>jadwal/kuliah">
				<i class="menu-icon icon-table"></i>
				Jadwal Kuliah
			</a>
		</li>
		<li>
			<a href="<?php echo base_url()?>jadwal/ruangan">
				<i class="menu-icon icon-table"></i>
				Jadwal Ruangan
			</a>
		</li>
							
	</ul><!--/.widget-nav-->
	<ul class="widget widget-menu unstyled">
		<li>
			<a href="<?php echo base_url()?>user/profile">
				<i class="menu-icon icon-user"></i>
				Profile
			</a>
		</li>
		<li>
			<a href="<?php echo base_url()?>user/sigout">
				<i class="menu-icon icon-signout"></i>
				Signout
			</a>
		</li>				
	</ul><!--/.widget-nav-->


</div><!--/.sidebar-->