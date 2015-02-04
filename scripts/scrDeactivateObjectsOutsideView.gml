/// scrDeactivateObjectsOutsideView()

// for performance deactivate those objects outside the view
{
    instance_activate_all()
    instance_deactivate_object(objParentHazard)
    instance_deactivate_object(objParentObstacle)
    instance_activate_region(view_xview[0]-128, view_yview[0]-128, view_wview[0]+128, view_hview[0]+128, true)
    instance_activate_region(view_xview[1]-128, view_yview[1]-128, view_wview[1]+128, view_hview[1]+128, true)
}