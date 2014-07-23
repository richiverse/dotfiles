# http://stackoverflow.com/questions/10125311/how-to-fire-ec2-instances-and-upload-run-a-startup-script-on-each-of-them

ec2-run-instances            \
  --instance-count 10        \
  --user-data-file $MYSCRIPT \
  --key $USER                \
  $SOMEAMI

