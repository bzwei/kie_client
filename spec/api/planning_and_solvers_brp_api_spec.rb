=begin
#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for KieClient::PlanningAndSolversBRPApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PlanningAndSolversBRPApi' do
  before do
    # run before each test
    @instance = KieClient::PlanningAndSolversBRPApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PlanningAndSolversBRPApi' do
    it 'should create an instance of PlanningAndSolversBRPApi' do
      expect(@instance).to be_instance_of(KieClient::PlanningAndSolversBRPApi)
    end
  end

  # unit tests for add_problem_fact_changes
  # Adds problem fact changes to given solver
  # 
  # @param id container id where the solver resides
  # @param solver_id identifier of the solver
  # @param body Problem fact changes, either single one or a list of them
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_problem_fact_changes test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_solver
  # Creates solver within given container
  # 
  # @param id container id where the solver config resides
  # @param solver_id identifier of the solver to create
  # @param body solver instance details as SolverInstance type
  # @param [Hash] opts the optional parameters
  # @return [SolverInstance]
  describe 'create_solver test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dispose_solver
  # Disposes given solver
  # 
  # @param id container id where the solver resides
  # @param solver_id identifier of the solver
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'dispose_solver test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_solver
  # Retrieves solver by its identifier from given container
  # 
  # @param id container id where the solver resides
  # @param solver_id identifier of the solver
  # @param [Hash] opts the optional parameters
  # @return [SolverInstance]
  describe 'get_solver test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_solver_with_best_solution
  # Retrieves best solution from solver within container
  # 
  # @param id container id where the solver resides
  # @param solver_id identifier of the solver
  # @param [Hash] opts the optional parameters
  # @return [SolverInstance]
  describe 'get_solver_with_best_solution test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_solvers
  # Retrieves solvers from given container
  # 
  # @param id container id where the solvers reside
  # @param [Hash] opts the optional parameters
  # @return [Solvers]
  describe 'get_solvers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for is_every_problem_fact_change_processed
  # Retrieves status if problem fact changes have been processed in given solver
  # 
  # @param id container id where the solver resides
  # @param solver_id identifier of the solver
  # @param [Hash] opts the optional parameters
  # @return [BOOLEAN]
  describe 'is_every_problem_fact_change_processed test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for solve_planning_problem
  # Solves given planning problem with given solver
  # 
  # @param id container id where the solver resides
  # @param solver_id identifier of the solver
  # @param body planning problem
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'solve_planning_problem test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for terminate_solver_early
  # Terminates early running solver with given id within container
  # 
  # @param id container id where the solver resides
  # @param solver_id identifier of the solver
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'terminate_solver_early test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end