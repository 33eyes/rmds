#
# rmds - Ruby Multidimensional Scaling Library
# Copyright (c) Christoph Heindl, 2010
# http://github.com/cheind/rmds
#

require './test/test_helper.rb'
require './test/unit/modules/auto_matrix_interface.rb'
require 'mds/interfaces/gsl_interface'

class TestStdlibInterface < Test::Unit::TestCase
  include AutoMatrixInterface
  
  def setup
    MDS::Matrix.push_interface(MDS::GSLInterface)
  end
  
  def teardown
    MDS::Matrix.pop_interface
  end
  
end
