import cv2

# initialize the video capture device
cap = cv2.VideoCapture(0)

# initialize the feature detector and descriptor
detector = cv2.ORB_create()
matcher = cv2.BFMatcher(cv2.NORM_HAMMING, crossCheck=True)

# initialize the map and robot pose
map_points = []
robot_pose = None

while True:
    # capture a frame from the camera
    ret, frame = cap.read()

    # detect keypoints and compute descriptors
    keypoints, descriptors = detector.detectAndCompute(frame, None)

    # match descriptors with map points
    matches = matcher.match(descriptors, map_points)

    # filter out poor matches
    matches = [m for m in matches if m.distance < 50]

    if len(matches) > 5:
        # estimate the robot's pose from the matches
        src_pts = np.float32([keypoints[m.queryIdx].pt for m in matches]).reshape(-1, 1, 2)
        dst_pts = np.float32([map_points[m.trainIdx] for m in matches]).reshape(-1, 1, 2)
        _, rvec, tvec = cv2.solvePnP(dst_pts, src_pts, camera_matrix, distortion_coefficients)

        # update the robot pose
        robot_pose = (rvec, tvec)

    # update the map with new keypoints and descriptors
    map_points += [keypoints[m.queryIdx].pt for m in matches]

    # display the frame with the robot pose overlaid
    if robot_pose is not None:
        frame = cv2.drawFrameAxes(frame, camera_matrix, distortion_coefficients, rvec, tvec, 0.1)
    cv2.imshow('SLAM', frame)

    # wait for key press
    key = cv2.waitKey(1)
    if key == ord('q'):
        break

# release the video capture device and close the window
cap.release()
cv2.destroyAllWindows()