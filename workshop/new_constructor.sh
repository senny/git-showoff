#! /bin/sh

ruby -e "$: << './lib';
require 'person'
begin
  Person.new('Hans', 18)
  exit 1
rescue => e;
  exit 0
end"
