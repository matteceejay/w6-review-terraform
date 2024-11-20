resource "aws_iam_user" "user1" {
    name = "Dianna"
  
}
resource "aws_iam_group" "group2" {
    name = "sre"
  
}
resource "aws_iam_group_membership" "name" {
    name = "addingusertogroup"
    group = aws_iam_group.group2.name
    users = [aws_iam_user.user1.name]
  
}