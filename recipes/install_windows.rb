# remote_file "#{node[:oracle_db][:tmp_dir]}/oracle-xe.zip" do
#     action :create_if_missing
#     owner "Administrator"
#     source "#{node[:oracle_db][:url]}"
# end

windows_zipfile "#{node[:oracle_db][:tmp_dir]/oracle}" do
  source "#{node[:oracle_db][:url]}"
  action :unzip
end