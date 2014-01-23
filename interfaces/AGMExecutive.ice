//******************************************************************
// 
//  Generated by IDSL to IDL Translator
//  
//  File name: AGMExecutive.idl
//  Source: AGMExecutive.idsl
//  
//******************************************************************   
#ifndef ROBOCOMPAGMEXECUTIVE_ICE
#define ROBOCOMPAGMEXECUTIVE_ICE

#include <AGMWorldModel.ice>

#include <Planning.ice>

module RoboCompAGMExecutive{

	interface AGMExecutive{
		void  activate();
		void  deactivate();
		void  reset();
		bool modificationProposal(RoboCompAGMWorldModel::Event modification);
		void  setMission(RoboCompAGMWorldModel::World world);
		void  getData(out RoboCompAGMWorldModel::World world, out RoboCompAGMWorldModel::World target, out RoboCompPlanning::Plan plan);
		void  broadcastModel();
	};
	interface AGMExecutiveVisualizationTopic{
		void  update(RoboCompAGMWorldModel::World world, RoboCompAGMWorldModel::World target, RoboCompPlanning::Plan plan);
		void  successFulChange(RoboCompPlanning::ActionSequence actions);
		void  aimedChange(RoboCompPlanning::Action action);
		void  invalidChange(string agent);
	};
	interface AGMExecutiveTopic{
		void  modelModified(RoboCompAGMWorldModel::Event modification);
		void  modelUpdated(RoboCompAGMWorldModel::Node modification);
	};
};
  
#endif