var dsFile = file_bin_open("Data\deadsplit.dat",1);
file_bin_rewrite(dsFile);
file_bin_write_byte(dsFile,room);
file_bin_write_byte(dsFile,deadSplitFlag); 
file_bin_write_byte(dsFile,floor(score/100));
file_bin_write_byte(dsFile,score % 100);
file_bin_close(dsFile);

