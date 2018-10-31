Before do
  $driver.start_driver
  $driver.set_implicit_wait 5
end

After do
  $driver.driver_quit
end
